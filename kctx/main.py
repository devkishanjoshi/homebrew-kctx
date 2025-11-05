#!/usr/bin/env python3
import argparse
import yaml
import os

config_file_path_ = f"/Users/$USER/.kube/config"
config_file_path = os.path.expandvars(config_file_path_)

def get_contexts():
    with open(config_file_path, "r") as file:
        total_contexts = []
        data = yaml.safe_load(file)
        contexts = data.get('contexts', [])
        for i in range(len(contexts)):
            total_contexts.append((contexts)[i]['name'])
        return total_contexts
    
def check_valid_context(context_name):
    with open(config_file_path, "r") as file:
        data = yaml.safe_load(file)
        contexts = get_contexts()
        if context_name in contexts:
            return True
    return False

def update_current_context(context_name):
    if check_valid_context(context_name):
        with open(config_file_path, "r") as file:
            data = yaml.safe_load(file)

        data["current-context"] = context_name

        with open(config_file_path, "w") as f:
            yaml.safe_dump(data, f, default_flow_style=False)

        print(f"Context switched to {context_name}")
    else: 
        print(f"Context {context_name} not found in config")
        print("Available contexts are:")
        contexts = get_contexts()
        for i in contexts:
            print(i)
    


def main():
    parser = argparse.ArgumentParser(description="Tool to manage Kubernetes contexts")
    subparsers = parser.add_subparsers(dest="command")

    # list contexts command
    add_parser = subparsers.add_parser("update_context", help="Update current context")
    add_parser.add_argument("context_name", type=str, help="New context name to set")

    args = parser.parse_args()

    # if args.command == "show":
    #     contexts = get_contexts()
    #     for i in contexts:
    #         print(i)
    if args.command == "update_context":
        update_current_context(args.context_name)
    # elif args.command == "done":
    #     mark_done(args.id)
    # elif args.command == "delete":
    #     delete_task(args.id)
    else:
        contexts = get_contexts()
        for i in contexts:
            print(i)


if __name__ == "__main__":
    main()

