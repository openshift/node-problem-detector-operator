package v1alpha1

import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object

type NodeProblemDetectorList struct {
	metav1.TypeMeta `json:",inline"`
	metav1.ListMeta `json:"metadata"`
	Items           []NodeProblemDetector `json:"items"`
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object

type NodeProblemDetector struct {
	metav1.TypeMeta   `json:",inline"`
	metav1.ObjectMeta `json:"metadata"`
	Spec              NodeProblemDetectorSpec   `json:"spec"`
	Status            NodeProblemDetectorStatus `json:"status,omitempty"`
}

type NodeProblemDetectorSpec struct {
	ImagePrefix     string `json:"imagePrefix"`
	ImageVersion    string `json:"imageVersion"`
	ImagePullPolicy string `json:"imagePullPolicy"`
}

type NodeProblemDetectorStatus struct {
}
