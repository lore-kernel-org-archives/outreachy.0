X-GM-THRID: 6631766247288602624
X-Received: by 2002:ac8:4307:: with SMTP id z7mr19864428qtm.7.1544078403731;
        Wed, 05 Dec 2018 22:40:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3854:: with SMTP id r20ls6990289qtb.9.gmail; Wed, 05 Dec
 2018 22:40:03 -0800 (PST)
X-Received: by 2002:ac8:2d46:: with SMTP id o6mr20425228qta.35.1544078403031;
        Wed, 05 Dec 2018 22:40:03 -0800 (PST)
Received: by 2002:a37:a4c2:0:0:0:0:0 with SMTP id n185msqke;
        Wed, 5 Dec 2018 22:38:47 -0800 (PST)
X-Google-Smtp-Source: AFSGD/UxLkxjklzvuqAuQeYZAZnJyGqGm4YPEENQhtrHi3L61GRr0il38Seq2y7spYbfGjYaSgwV
X-Received: by 2002:a1c:6e11:: with SMTP id j17-v6mr2850841wmc.0.1544078327499;
        Wed, 05 Dec 2018 22:38:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544078327; cv=none;
        d=google.com; s=arc-20160816;
        b=jYEMCLYhL1LfI1lR3/LONF50mVaRpyDZEAQUzcxfEXGhOIzngSEArRSFpGzHLLnWhM
         3oQkPNCtG7yi/JXqmwyI/floKKjSMct67r9vylUAunpbxWIFjN2AtaRXAOjXd6x3yZBR
         mYbeG1I8jUwSc1Qgh9u9MYiRKU/LtXb4Ptwt0hvJLT9ZTquYQP+MUnZH/JKYmte70PXL
         2m3idamTZQ/dqobKNZXKe6DL98ydYYjELH0N+uO6vFrQafzV2cScl7Um8PxXazDctj95
         DdQryL/4Zb1k13N8ONvUfCsHwQxGlIiyz83TmFyfv6Oifhx1JMbka6ldzTyeszTK8J5r
         6HsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:content-language
         :in-reply-to:user-agent:date:from:to:references:subject;
        bh=erZCP9cv0/smqlgzcNh1MUHj7NEcyYh/F3pTcQ3fCpk=;
        b=fNcz1EhSqMMwrBkUvOdetsL8WtJPl3FDbXXsYvSg6Pj0lu0qROihZuEEsnhg9/yJUz
         mxc7UtQlwPATRJa92VrnLxPHIlXUGdMnnYvqMatHb/L/mUovC1glyHMCm4DI7HiunaBH
         EC96fjPnVF3EaKhgqk3FOF7O4257jBYHYgum3dgYvAoss264bzRMeuVrmL3iwmCR/tOp
         wrq1Os8NHjNoigFM3mraHZw/UyX50XsIR0Nb/TslGiZ8aQmyC/DDdj6qw45wB9KefgaV
         sJbixE9axD0DpmLaFH/JqWlzz8H9kev9ZR8aF+ApOQZu7RO+3lSKVp8uullS6sy07DAK
         5GPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.donnellan@au1.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=andrew.donnellan@au1.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Return-Path: <andrew.donnellan@au1.ibm.com>
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id h6si575761wmc.2.2018.12.05.22.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Dec 2018 22:38:47 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew.donnellan@au1.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.donnellan@au1.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=andrew.donnellan@au1.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id wB66YddY145529
	for <outreachy-kernel@googlegroups.com>; Thu, 6 Dec 2018 01:38:46 -0500
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2p6xem8kbn-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <outreachy-kernel@googlegroups.com>; Thu, 06 Dec 2018 01:38:45 -0500
Received: from localhost
	by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <andrew.donnellan@au1.ibm.com>;
	Thu, 6 Dec 2018 06:38:44 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
	by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Thu, 6 Dec 2018 06:38:42 -0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id wB66cfkr52887604
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <outreachy-kernel@googlegroups.com>; Thu, 6 Dec 2018 06:38:41 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2569E52051
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Dec 2018 06:38:41 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id C74DE5204F
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Dec 2018 06:38:40 +0000 (GMT)
Received: from [10.61.2.125] (haven.au.ibm.com [9.192.254.114])
	(using TLSv1.2 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 79D35A0231
	for <outreachy-kernel@googlegroups.com>; Thu,  6 Dec 2018 17:38:39 +1100 (AEDT)
Subject: Fwd: [ANNOUNCE] Call for Papers - linux.conf.au Kernel Miniconf,
 Christchurch NZ, 21-25 Jan 2019
References: <4e8f907e-ce44-191e-8ded-29ba9ab1cd08@au1.ibm.com>
To: outreachy-kernel@googlegroups.com
From: Andrew Donnellan <andrew.donnellan@au1.ibm.com>
X-Forwarded-Message-Id: <4e8f907e-ce44-191e-8ded-29ba9ab1cd08@au1.ibm.com>
Date: Thu, 6 Dec 2018 17:38:39 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
In-Reply-To: <4e8f907e-ce44-191e-8ded-29ba9ab1cd08@au1.ibm.com>
Content-Language: en-AU
X-TM-AS-GCONF: 00
x-cbid: 18120606-0020-0000-0000-000002F34CCD
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 18120606-0021-0000-0000-000021435A6A
Message-Id: <fd6b9298-90ea-b40e-2797-8f1d400769e6@au1.ibm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: Quoted-printable
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2018-12-06_01:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1812060060

If any outreachy kernel interns or ex-interns are coming to=20
linux.conf.au next month, please consider submitting a talk to the=20
Kernel Miniconf - I would love to have you speak!


Andrew


-------- Forwarded Message --------
Subject: [ANNOUNCE] Call for Papers - linux.conf.au Kernel Miniconf,=20
Christchurch NZ, 21-25 Jan 2019
Date: Sun, 21 Oct 2018 12:10:53 +1100
From: Andrew Donnellan <andrew.donnellan@au1.ibm.com>
To: LKML <linux-kernel@vger.kernel.org>
CC: lwn@lwn.net

The linux.conf.au Kernel Miniconf is happening once again, this time in=20
Christchurch on 22 Jan 2019.

*** Submissions close on 2018-12-16, 23:59 AoE, with early submissions=20
(before 2018-11-16, 23:59 AoE) given priority. ***

*** Submission details: http://lca-kernel.ozlabs.org/2019-cfp.html ***

The Kernel Miniconf is a 1 day stream alongside the main LCA conference=20
to talk about kernel stuff.

We invite submissions on anything related to kernel and low-level=20
systems programming. We welcome submissions from developers of all=20
levels of experience in the kernel community, covering a broad range of=20
topics.

Past Kernel Miniconfs have included technical talks on topics such as=20
memory management, RCU, scheduling and filesystems, as well as talks on=20
Linux kernel community topics such as licensing and Linux kernel=20
development process.

We strongly encourage both first-time and seasoned speakers from all=20
backgrounds, ages, genders, nationalities, ethnicities, religions and=20
abilities. Like the main LCA conference itself, we respect and encourage=20
diversity at our miniconf.

Speakers will need to purchase an LCA ticket to attend.

See http://lca-kernel.ozlabs.org/2019-cfp.html for full details and the=20
submission form.

--=20
Andrew Donnellan              OzLabs, ADL Canberra
andrew.donnellan@au1.ibm.com  IBM Australia Limited


