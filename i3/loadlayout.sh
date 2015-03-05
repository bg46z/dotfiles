#!/bin/bash
i3-msg "workspace 1; append_layout ~/.i3/workspace1.json"
i3-msg "exec terminator; exec terminator;exec terminator;"
