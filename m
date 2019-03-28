X-GM-THRID: 6673526456107139072
X-Received: by 2002:a81:7acf:: with SMTP id v198mr2780497ywc.16.1553801460531;
        Thu, 28 Mar 2019 12:31:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:be8b:: with SMTP id i11ls1966820ybk.9.gmail; Thu, 28 Mar
 2019 12:30:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwLl6jkb2FgmXiS2TW+erbqhhZEfceW5gMv3u3QFlb4BYDOuca9AyvjHD6pivDQFQagUP/k
X-Received: by 2002:a25:2d7:: with SMTP id 206mr2902791ybc.66.1553801459647;
        Thu, 28 Mar 2019 12:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553801459; cv=none;
        d=google.com; s=arc-20160816;
        b=D6IcMpoHFstPIi5jx5LKo5I5G6hfKa8Lyh8X4MzPysnssBQZ04706I6K2Az5c5bHC/
         mT5xyDVf6JB/PteUS6milV5MN5pQhh7PKzbI8M9iZm76ptzH3W0BVUBRVjpXdH9FaHqV
         d8Nld1vQFGZsApXjDlKc/xTFqDJXIaCQKNNle08xCWD6eHf38iAp3ckRj00QOZizKq93
         zfIocGSMWiuWYxN77QS8UDCvPjZjtRTu8sglC/ECcBkvMhTaySAs8C7z3h/ibK2FsAgF
         LQsyzoSBkLzGD/pLLjUNaCljQ6O0/8tAmK+YsYCtWJpYfrl0GnmSJAPJsLjdTesXpJb7
         nXaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KHH1VB4Gn/j+J3rcjI+VC9dpjkNpL+O9eWgWqLZAidM=;
        b=gsZOTYdzn8KCztQQQypRsB1vRg7UcrqHYHT163GyKwXAA1RCUWWq8irQq9uJiOk/II
         HrVnIvPbKSm4kRo2ou/RcH3Jw7SMfUJ06duSPCl3kk8MMGrV9QJE3PgHCSCPzeQN4BWQ
         5v9h8fwiJ6iec8bo7qLr7hZ9C5PCUiS5KUhr4nZJlgOFKXh3n3NBXNjo8/ztosxr+gmq
         Z+Mr+/k2ygwTMR89eXtjNhcVXkFUd5qKTwsYd2fccrtR65IMYxJ7bJ54rx4750yoatCi
         YkhT0V5gghhmDnncO7k0xWm6Rb7qgmAWnK5dhDHUMpMbyFEo3hpumDP4pXRQ00DAVh1o
         W6PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="gpQx/Ldu";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.69.30 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic316-54.consmr.mail.gq1.yahoo.com (sonic316-54.consmr.mail.gq1.yahoo.com. [98.137.69.30])
        by gmr-mx.google.com with ESMTPS id 126si501466ybo.3.2019.03.28.12.30.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 12:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.69.30 as permitted sender) client-ip=98.137.69.30;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="gpQx/Ldu";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 98.137.69.30 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553801458; bh=KHH1VB4Gn/j+J3rcjI+VC9dpjkNpL+O9eWgWqLZAidM=; h=From:To:Cc:Subject:Date:From:Subject; b=gpQx/Ldu0unxK6WiEHPtLzsq+bUIwmebkC7/L9jAlmYEY7C1So6y8bGZoQoS3l2m/XpVGQf3Mk7uWlN+PTSFmAAYW6cl7MhlmOkfXx/tzMIGrKmkG4ew6UD2dmS4Bq6Nq9l96KLHAvEb/sK0RYG33eVyefsQMOoNvoeCirp4BHrysQ7/XCSigsP30feEJmSMiiakuZoupSjgnxSOtwSbu8nxnwYphKhwWW3ncE8rvzmxlSvm3Cy+PvMIVkabNa+nAk8GweSMgRkM93qmC3geVrBjBHdSykLRv0kKkdFRAcohpQygsxPtfkvVWGBdI5VrJ+lE6+RKYnmGIDyhjzbmmQ==
X-YMail-OSG: 2k1u8lwVM1kH8PQbYVBq4Ht_Zf2kjZd1UPcKZdXzViK8P8m6y9wIVpZBFImJVu1
 X9b_JBve6wpkRCyu07odZqKjs8XEXwGcPhxqvuCLXCIqIFH6mC5etQRQXZ65KUnMxXrD.ocJk1au
 e2rqOjsOqigBsr9_xYDoA6opwcJBhpjCynIfvhVOUOC9.t_mJAGiiU_s3vmrGU8A6ziUd3bU3hx1
 VSEHjaJxsIUIgXirjwPaKO8GqhdQCEWRWeM28iqJt.DLJDdLQXOS16rBiEYG45_whxtx2RmKTXZs
 VOxaoryjxROBcJCwXepB69xDOzvJldSMXLfGxPDi32F8v6_SxuC2nQtuJ6u07.eU7ofk6Atio89P
 eFgVYvGxOW3xs5fwnpPeVUJEhqguFF1NbmaLzP.09K_FLLw7YncoTk1eTiUZ8CZC.jInXlSlWoUH
 UislTpg7KOsqt9rsBPX2fIRjfgctl2gkGuMHnfSJpALdGx_M._1gFt7Kratxd9hsP80IgHconbZZ
 LjfsAfguhdpvoH2upFVecOateBOOAgtEXBUygwXhv6Svxzne15Ll5EcN6Yw5kT46HgIWPm3Tgggk
 0N1FCPVvtehzGHlx.vHghe2VIdmDNVYAFtEcakigcuVi9bb2CkrMB1kgjOV3bLnSWw9Y6xJV.inY
 3_J2T5d00cwoafRYc4NJEwL4d4PhyY.A5bJ2qBQmMnDCGEMuMQ9RhI6B5mdFmPGpxmKmi.rlWOGH
 F1v0d9FaZ05y7TKqDQk64WmaseeNN98jBAWqWP3YAr_f7hNhSZqKiZJEJ2_azoBzHcXBzUIQsLKG
 bxwUBry2u7vVzDlyo6hGLym1IuWKc0f.QPv.ANebukYpitkh5cgcj6XWtT1p.7_aOlonYELq7tPs
 d607yumfOFT.7u2syDnjUwRq3gvewi2KngtpDIu.5uJdS3D6TYnUbAvRr8lrMyeKxIWtf.IZ8GW_
 KnTxHQIEjRHlkAklb9dZ.hGI0T72gjomiTAL_MGwaRzicW10E6rmMIukgPwcJLILjy_6n41hyTGx
 XLQjskRC_SEb6SjmBr27HMixwiLXYbRpRXqaWMBcmUXkjF4av0e27QLLafGeBMRCWWPqP8wJUZif
 YpA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.gq1.yahoo.com with HTTP; Thu, 28 Mar 2019 19:30:58 +0000
Received: from 210.212.93.46 (EHLO localhost.localdomain) ([210.212.93.46])
          by smtp403.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 993959498c4cdbcfc9ce757fc7a507fa;
          Thu, 28 Mar 2019 19:30:56 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 0/3] Remove parentheses in rtlwifi
Date: Fri, 29 Mar 2019 01:00:38 +0530
Message-Id: <20190328193041.13541-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following patches remove the parentheses around the right hand side
of expressions in rtlwifi. Issue found by Coccinelle using the following
semantic patch:

@@
expression e1, e2, e3;
@@
(
if (e1)
e2;
else
e3;
|
-e1 = (e2);
+e1 = e2;
)

Nishka Dasgupta (3):
  staging: rtlwifi: phydm: phydm_hwconfig.c: Remove parentheses
  staging: rtlwifi: phydm: phydm_adc_sampling.c Remove brackets
  staging: rtlwifi: phydm: phydm_debug.c: Remove brackets

 .../staging/rtlwifi/phydm/phydm_adc_sampling.c   |  4 ++--
 drivers/staging/rtlwifi/phydm/phydm_debug.c      | 12 ++++++------
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c   | 16 ++++++++--------
 3 files changed, 16 insertions(+), 16 deletions(-)

-- 
2.19.1


