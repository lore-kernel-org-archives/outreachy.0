X-GM-THRID: 6674226221101875200
X-Received: by 2002:a65:568b:: with SMTP id v11mr500461pgs.25.1553964395927;
        Sat, 30 Mar 2019 09:46:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:b60a:: with SMTP id j10ls2201341pff.6.gmail; Sat, 30 Mar
 2019 09:46:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyhvlCZ+43zOk0F5A5QjESRKaWbG1vbUrfukIyvCcH+OLF492UONPZi2UiATrSyWoRcQ05H
X-Received: by 2002:a65:5a85:: with SMTP id c5mr705280pgt.68.1553964395188;
        Sat, 30 Mar 2019 09:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553964395; cv=none;
        d=google.com; s=arc-20160816;
        b=UEWXhPpuEYEeJrXppwuHwpWCSuNuayqFBIpxAAfVFIFxw3kC9pi+AZw/CP2uwZ1byC
         EogyNVPNHTrfWGrTPHCq9xwv1NVpKmsJbh1FIV5bblsInx9PpTYLdtxRaVeQ7ZY9CECX
         /oL1Jw8Qd7SWoD05so0Xqz9Emrp9gzolTn2XDqMhO5JydrF/xRoRnMXwgQwmKQKN70xK
         J8vN1J9C7wbzEf849OAErZyHZGU4TbZ5Vk/IQEYQfphP0BPIkOxrs2p4cuNHEN6ubMwW
         33JUujTxlot4d6rSiFPf+FGd4WFypZvcyvX3O7i+kEqiE5ajafd7k3xLHoBulu9wkarl
         nuHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lKuObNcqvdYMknO7zVpFNjuAM3PMCXYznONJ6NvfsUY=;
        b=ChqsepZDSgRCKJ1ZChWyPyvGDMHxLTihd+ny3tG+CmqtlZtibn1AKMMxz2mm15X8jb
         DzXUKI11mAxOCLcJCtDwwdr146R9AM+D9Nr5b89wB6spdB0YViWkbPqpp+OiGq6Bo7t+
         2aw6m81AWvKoCRrlvoj5ZKcsYZt6LzOpbkUZO5+G1KWaHb0KhCy2hQL4JJMipc7lq2aa
         ViEL0mod6ml9xa7R95hRHfCMCtGNtKh0/NBjWAfh//PY7axUzlm8SbSJbm276WbA1Pnr
         Oh0Psudm6Rz+GdaMSXWkxbSt4fyfwpfsoGpSOOr1Zk9yuvtO407DwhzqYvnS8Hd4VC/Q
         n+GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=snDZAQ4q;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic306-20.consmr.mail.sg3.yahoo.com (sonic306-20.consmr.mail.sg3.yahoo.com. [106.10.241.140])
        by gmr-mx.google.com with ESMTPS id f23si386302pgk.0.2019.03.30.09.46.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:46:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) client-ip=106.10.241.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=snDZAQ4q;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553964393; bh=lKuObNcqvdYMknO7zVpFNjuAM3PMCXYznONJ6NvfsUY=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=snDZAQ4qUsKof1jKJ8KSCbd/5rg5+dLWCQQ3yf6P0EToSZZPTjo5W77RIb8qCtumO7EX/I3gbzUsSHrx4l/RIkL71I6KjgP0fKZCD5iFlz8zTANQzKZzrC5TIPPnSUPX+fOyktOGubq9cZzCbkMQ8dXNXcXJypXcPQb7Ta1nfsH9HaQIZFbaM9E2unzrOEu6hxiKL3YIGrVha6sYeJm2Q6vFDRSXA5hVI47ZCxos337hSeSkAG7tZUzeuyxESz3tsrAbBSXIJz3zJedV1j391I5I2EO0lCWLhf2BDRSpu1LGGHkmAD8dLIfAyrKi8cVvdGbRe2YyWFYLLpq6sJQ7BQ==
X-YMail-OSG: EcpxIZIVM1kLSi6XCbTe5IjElgHzqgMDpwQYaIMCcdIBxLp7re8vdWXC9wgQyIx
 p5tS7fBgm6LWH3wubnEHKw0D2ZZO4V52jvqkO_V8fnwanq3e5kTkWnP7khB0J22Zm3kDupp4zGxs
 7L14.xWQxBV3Bgq8KDq8bbR8rtQ4O3tToIBtw0k7n4UOHkazl_7DMVLDXe12TYZkEhQCzPLXnKWH
 ZZ6qivzx0dPAQX7YnFTxvOAoC9ddKH3gtltMZDKKZwk1yy8FTKQVAtthG8HFNWn8IgngqMZidGHt
 I.j74fUHDtE98PchJnkkjBYOwd1OQUP6L2n24H1Hm_VkzBE8ibqRfviJzD8EweaOyStXMlRdpNFq
 K_l.NPrNK0dk9yE9ADNwsozelbX3y1Ym4c9lBjnhJnOvSrs8ZAJ1fh3L5piYF_jha2zC03Mv_gCP
 19GPwHhJScxjyt_Zk9eoHhVXATJpsqmM6aObQn8pDUpayUedJI9HAwyttUa4N8ybqEdpaXMR0ax_
 R2vHMhtCV9DfpbhEOn2UvhI6YSgSoRKjvJL8rXb8o39LY.QWwMiWKawNwJrZ0ghm_XKgFL3PpSFT
 UoxHA9tj.XhNJFZUspfL9_FF7YiV0QqbHqfPoVFWx3t_mZJ9NajN8uBAvipo3rdEbOPAbtqArHaN
 E7xzNe4HqDPY9DLl06ZrF_ik9q_qqkPJ6hQPcxuxrg.V.jjtM2vCPRKeP_Id6COnFjeYFZ1Z2Khp
 ohWaK8PsDBKxljXlBS2WWN3W3nPjrS6GV9RA3aVfXs8E6yw4L1VAddmt10a80W_AV3rq8sG4Vmfk
 tYIzXdhdsTwQqPWGj.R9m8gaxU.qNx7Y5Johm1TCZ74cYsIya_IOi6Qcpb.hlyKPWe4oTO1QzqAN
 D2SgLL374OdWXp9DHzAvZhRBWyCGu7X8LLLV7hbIxfXItyn_9YFAGUI6wsUjyL4vgF7OUDvLm4kk
 8vj7undOcy1gtuHkKwTHXsNDuAwXs.2ZgEs4Igxt5PL57gYd8UvD30N9am2V5Ktyk2dv8UFKIXAJ
 6avw0sKe93jz0NLcT_D1ARyyFSTdY_sgTCO9ShdcKeYyX_0afOi3ROtuU2G52DoYvVpBLJff0Yzw
 VMerGkoGAp402Draca3TCcAd0f0y2y0iwvuAeWA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 16:46:33 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp401.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 266be56d59f3e40a0126d3a0f386759f;
          Sat, 30 Mar 2019 16:46:29 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 2/2 v5] staging: rtlwifi: phydm: Simplify `status = status & <expression>`
Date: Sat, 30 Mar 2019 22:16:08 +0530
Message-Id: <423db52767ef4efafe5a078aecb1691d4bab9138.1553964092.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1553964092.git.nishka.dasgupta@yahoo.com>
References: <cover.1553964092.git.nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Simplify occurrences of `status = status & <expression>` by modifying
them to `status &= <expression> to make the code more readable.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtlwifi/phydm/phydm_debug.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index a113e2b63153..5e0151036542 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -51,17 +51,13 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
 				      (power_index << 16) | (power_index << 8) |
 				      (power_index);
 			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
-				status = status &
-					  phydm_api_set_txagc(
-						  dm, power_index,
+				status &= phydm_api_set_txagc(dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
 						  i, false);
 		} else if (dm->support_ic_type & ODM_RTL8197F) {
 			for (i = 0; i <= ODM_RATEMCS15; i++)
-				status = status &
-					 phydm_api_set_txagc(
-						  dm, power_index,
+				status &= phydm_api_set_txagc(dm, power_index,
 						  (enum odm_rf_radio_path)
 							  dm_value[1],
 						  i, false);
-- 
2.19.1


