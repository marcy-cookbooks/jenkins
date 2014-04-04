jenkins Cookbook
================
Simpliy install jenkins.

Requirements
------------
* Chef 11 or higher
* CentOS5,6 or Amazon Linux

Attributes
----------
None

Usage
-----
#### jenkins::default
Just include `jenkins` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[jenkins]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
License: MIT License

Authors: Marcy
