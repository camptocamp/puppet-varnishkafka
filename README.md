# puppet-varnishkafka

## Overview

This module manages the Varnish Kafka service. As of the latest update, it is designed to work with systems that use systemd for service management.

## Requirements

### Operating System Compatibility

This module is compatible with the following operating systems:

- Red Hat Enterprise Linux/CentOS 7 and later
- Ubuntu 15.04 and later
- Debian 8 (Jessie) and later

Note: Older operating systems that do not use systemd are no longer supported.

## Changelog

Removed all "validate" occurences as they are no more compatible with puppetlabs-stdlib and refactored code to avoid class inheritance.

[![Puppet Forge](http://img.shields.io/puppetforge/v/camptocamp/varnishkafka.svg)](https://forge.puppetlabs.com/camptocamp/varnishkafka)
[![Build Status](https://travis-ci.org/camptocamp/puppet-varnishkafka.png?branch=master)](https://travis-ci.org/camptocamp/puppet-varnishkafka)
