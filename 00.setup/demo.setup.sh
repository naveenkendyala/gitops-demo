# Install the Operator
oc apply -f configuration/argo-subscription.yaml

# Ensure that all resoures are running for Argo before proceeding to next step
# Create a GitOps Application
oc apply -f configuration/streams-app.yaml




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