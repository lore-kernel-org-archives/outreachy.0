Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC86D2EB
	for <outreachy@lists.linux.dev>; Tue,  3 Oct 2023 20:10:01 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 393GYSgk020739;
	Tue, 3 Oct 2023 12:38:35 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3tegk42wq0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 12:38:35 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 393GcXNv044217
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 12:38:33 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 3 Oct 2023
 12:38:32 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 3 Oct 2023 12:38:32 -0400
Received: from HYB-a2JJhsYKAxD.ad.analog.com (HYB-a2JJhsYKAxD.ad.analog.com [10.25.73.19])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 393GcGVS006440;
	Tue, 3 Oct 2023 12:38:18 -0400
From: Gokhan Celik <gokhan.celik@analog.com>
To: <outreachy@lists.linux.dev>
CC: Gokhan Celik <gokhan.celik@analog.com>,
        Liam Girdwood
	<lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gokhan Celik <Gokhan.Celik@analog.com>
Subject: [PATCH v3 0/2] Add ADI MAX77503 regulator driver and bindings
Date: Tue, 3 Oct 2023 19:38:01 +0300
Message-ID: <cover.1696348543.git.gokhan.celik@analog.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: G751w1x_Nc5UUwFA8aJeKvCe4Kq54MZf
X-Proofpoint-GUID: G751w1x_Nc5UUwFA8aJeKvCe4Kq54MZf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_13,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=633 clxscore=1011
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 mlxscore=0 suspectscore=0 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2309180000
 definitions=main-2310030126

Add MAX77503 buck converter driver and devicetree bindings.
Apply patches in sequence.

Gokhan Celik (2):
  regulator: max77503: Add ADI MAX77503 support
  regulator: dt-bindings: Add ADI MAX77503 support

 .../regulator/adi,max77503-regulator.yaml     |  51 +++++++
 drivers/regulator/Kconfig                     |  10 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/max77503-regulator.c        | 137 ++++++++++++++++++
 4 files changed, 199 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml
 create mode 100644 drivers/regulator/max77503-regulator.c

-- 
2.34.1

