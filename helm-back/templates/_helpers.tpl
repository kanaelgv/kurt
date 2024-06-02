{{- define "app.chart" -}}                                        
{{- printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end }}

{{- define "app.selectorLabels" -}}                               
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "app.labels" -}}                                       
helm.sh/chart: {{ include "app.chart" . }}
{{ include "app.selectorLabels" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "kurt-back.EnvStartup" }}                              


{{- end }}