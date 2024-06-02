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

{{- define "app.standOpts" -}}
  {{- if has .Values.app.standName (list "dev") -}}
    "eto dev stand "
  {{- else if has .Values.app.standName (list "test") -}}
    "eto test stand "
  {{- else -}}
    "standName ne ukazan"
  {{- end -}}
{{- end -}}

{{- define "app.app_Opts" -}}                                    
    "--eto nabor nastroek"
{{- end -}}