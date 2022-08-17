# ------------------------------------------------------------------------------------------------------------

# Install the Operator
oc apply -f 00.setup/configuration/subscription-argo.yaml

# Ensure that all resoures are running for Argo before proceeding to next step

# Cretae Operators as necessary for openshift-operator namespace
oc apply -f 00.setup/configuration/app-openshift-operators-ns.yaml

# Create a GitOps Application
oc apply -f 00.setup/configuration/app-streams-demo-ns.yaml

# ------------------------------------------------------------------------------------------------------------

# Deleting the ArgoCD

# Step:01
  # Delete the Argo CD instances added to the namespace of the GitOps Operator
  # oc delete gitopsservice cluster -n openshift-gitops

# Step:02 [If Applicable]
  # Delete the Argo CD from any other namespaces
  # oc delete gitopsservice cluster -n <namespace>

# Uninstall the Operator itself from UI

# ------------------------------------------------------------------------------------------------------------