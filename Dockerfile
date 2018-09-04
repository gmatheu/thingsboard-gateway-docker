#
# Copyright © 2017 The Thingsboard Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

FROM openjdk:8-jre

ARG GATEWAY_VERSION=1.4.0
ARG GATEWAY_PATCH_VERSION=.1

RUN wget https://github.com/thingsboard/thingsboard-gateway/releases/download/v${GATEWAY_VERSION}${GATEWAY_PATCH_VERSION}/tb-gateway-${GATEWAY_VERSION}.deb \
  && dpkg -i tb-gateway-${GATEWAY_VERSION}.deb \
  && rm tb-gateway-${GATEWAY_VERSION}.deb
ADD run-application.sh /run-application.sh

CMD /run-application.sh
