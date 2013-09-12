# Triage

Track security in your applications.  Manage priorities.  Demonstrate security anti-patterns. 

*Triage is NOT secure.*  It is an application intended to illustrate security problems in Rails applications.

## Branches

Note that Triage *intentionally* had two branches:  
* security_errors :  contains many security holes
* security_fixes : attempts to illustrate how to fix the holes

## Setup

Once cloned, you should only have to: 
- bundle install
- rake db:migrate

Depending on which branch you clone, you _might_ need to generate a new secret token (rake secret) and put it in your config/initializers/secret_token.rb.

## Related Projects

Check out the SWTF project (https://bitbucket.org/mkonda/swtf/overview) which runs security tests against Triage.

## License

Triage is licensed under the MIT license.  (http://opensource.org/licenses/mit-license.php)
