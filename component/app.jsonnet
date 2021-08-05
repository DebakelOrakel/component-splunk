local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.splunk;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('splunk', params.namespace);

{
  splunk: app,
}
