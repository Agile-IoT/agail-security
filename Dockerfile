#/*********************************************************************
#* Copyright (c) 2018 University of Passau and others 
#*
#* This program and the accompanying materials are made
#* available under the terms of the Eclipse Public License 2.0
#* which is available at https://www.eclipse.org/legal/epl-2.0/
#*
#* SPDX-License-Identifier: EPL-2.0
#**********************************************************************/

FROM resin/raspberry-pi3-node:7.8.0-20170426

COPY . /opt/agile-idm-web-ui
WORKDIR /opt/agile-idm-web-ui/
RUN rm -rf node_modules
RUN npm install
EXPOSE 3000
ENV DEBUG_IDM_WEB 1
ENV DEBUG_IDM_CORE 1
CMD ./Start.sh
