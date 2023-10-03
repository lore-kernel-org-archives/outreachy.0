Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B5D25102
	for <outreachy@lists.linux.dev>; Tue,  3 Oct 2023 16:39:13 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 393GRXpC020750;
	Tue, 3 Oct 2023 12:39:04 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3tegk42ww7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 12:39:04 -0400 (EDT)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 393Gd3jp016430
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 12:39:03 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 3 Oct 2023
 12:39:02 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 3 Oct 2023 12:39:01 -0400
Received: from HYB-a2JJhsYKAxD.ad.analog.com (HYB-a2JJhsYKAxD.ad.analog.com [10.25.73.19])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 393GcGVU006440;
	Tue, 3 Oct 2023 12:38:50 -0400
From: Gokhan Celik <gokhan.celik@analog.com>
To: <outreachy@lists.linux.dev>
CC: Gokhan Celik <gokhan.celik@analog.com>,
        Conor Dooley
	<conor.dooley@microchip.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
	<broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gokhan Celik <Gokhan.Celik@analog.com>
Subject: [PATCH v3 2/2] regulator: dt-bindings: Add ADI MAX77503 support
Date: Tue, 3 Oct 2023 19:38:03 +0300
Message-ID: <f50172e025f063247d85725fa0e8600ae6f7a493.1696348543.git.gokhan.celik@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696348543.git.gokhan.celik@analog.com>
References: <cover.1696348543.git.gokhan.celik@analog.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: JH_6f3ugAzv0_9L9Mfjoolxb_dhiFZ3R
X-Proofpoint-GUID: JH_6f3ugAzv0_9L9Mfjoolxb_dhiFZ3R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_13,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1011
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 mlxscore=0 suspectscore=0 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2309180000
 definitions=main-2310030126

Add ADI MAX77503 buck converter devicetree document.

Signed-off-by: Gokhan Celik <gokhan.celik@analog.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
Changelog:
V2 -> V3: Addressed the review comments
 
 .../regulator/adi,max77503-regulator.yaml     | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml

diff --git a/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml b/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml
new file mode 100644
index 000000000000..554df8e2b0b6
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2023 Analog Devices, Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/adi,max77503-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices MAX77503 Buck Converter
+
+maintainers:
+  - Gokhan Celik <Gokhan.Celik@analog.com>
+
+description: |
+  The Analog Devices MAX77503 is a single channel 14V input, 1.5A 
+  high-efficiency buck converter. This converter has 94% efficiency
+  for 2-Cell/3-Cell battery applications.
+
+allOf:
+  - $ref: regulator.yaml#
+
+properties:
+  compatible:
+    enum:
+      - adi,max77503
+
+  reg:
+    description: I2C address of the device
+    items:
+      - enum: [0x1e, 0x24, 0x37]
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@1e {
+            compatible = "adi,max77503";
+            reg = <0x1e>;
+
+            regulator-min-microvolt = <800000>;
+            regulator-max-microvolt = <5000000>;
+        };
+    };
+
-- 
2.34.1

