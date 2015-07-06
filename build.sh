#!/usr/bin/env bash
set -e

psc-publish | sed 's/Prim.Cheat/Prim/g'
