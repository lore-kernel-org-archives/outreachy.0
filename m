X-GM-THRID: 6670962421189836800
X-Received: by 2002:a9d:6412:: with SMTP id h18mr11964199otl.51.1553513263012;
        Mon, 25 Mar 2019 04:27:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4143:: with SMTP id o64ls3029532oia.8.gmail; Mon, 25 Mar
 2019 04:27:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwTTrVrutj0TOKpZ1qckTztdSLZxXWotlhB6bVWIFZ6zbOG7pfmLiTSYfrtZjxq+4feeqce
X-Received: by 2002:aca:dd0b:: with SMTP id u11mr11393769oig.24.1553513261932;
        Mon, 25 Mar 2019 04:27:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553513261; cv=none;
        d=google.com; s=arc-20160816;
        b=PuYEaAcDqahgoH+u+iyS25zWxjiAAu4cmFKKfYn4vmfd48e6Bg1DEhFO9SecgMRssQ
         El4Dsu1687WOdj7EWjK3i99gvsfmjU6ROSzfr+X5yRcDqiVssOjYbaalyfX3aE/a+Bm3
         5qIk+rUWe1wEDQgIMbYBpQckJf0tC5Ti3ud0yszDDEV87VbKQl1FNKyCh4vlQdLo3DpH
         u9uHxB0FPW1xYKVVJ/jgwBkdCAIg6rpMPXtrlbgRdhJ1TaudSiwzc8/lIwRuAzwvEu5J
         dnpIDxjDQbZ16skOKjLZruTvhUCwp4yZKmKUsCR67DlxqK6ZOYOnIl99CXKY/h3sz2Q8
         g46w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JWuV1isC1L/1bzegDsOKLhH95T/l4TCS0CEvg9dA/9M=;
        b=HRXNDrKcZdS9/LEkGCc5bpVagFowUbT/SDpgVRyacJ4tGMwXUf7at8geSHgU8KqR//
         aL7YlWI9DH0vPw4nhxwSe2EzK4EuRCrYQ5e9nknZDP7pbgC7ZA3gNZAdDB+Zy5t+exGJ
         4xpnR/EN3TsaDUPCxlj2PGPRvtSJPatD3OOIt4J9Na0Aki/i0GWiGHduSjTqnDsV1vZL
         6JVSzEbFy5FWUKIO7ZUHT8Pl4Pi0PRraF9fpL0Sf2GDu8Q5I3/XVEHg4hrY8XrF7BIes
         dLPXIItDPZcJh2xdXnFP05cP9l+s0l1dIeGnDpFxrLn1EL+LLXYZRS6IkUrIqZ6sos8q
         wrOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BxmBYeS9;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l23si917437otn.4.2019.03.25.04.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 04:27:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BxmBYeS9;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id c207so6206919pfc.7
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 04:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JWuV1isC1L/1bzegDsOKLhH95T/l4TCS0CEvg9dA/9M=;
        b=BxmBYeS9na2C6RDI07mMe4vqqBtsdisSPGTaJ28aXwgUnPjU+HNs+pHMOpaYqAN53M
         Jxqd0S86YOOFx5fGGDVrQ+PYblmPDS4FgmH3KDbVyz1q625f6FXGQ9lC73R1V4P12Ckl
         1qFAwZLKdpzgQ3OwJrySHAj20HdYHOIJS6mpqqf8I+LA3K7/lFXR3yUxTFg5jFeZKdNA
         QrYdmb0DLBslH/C2xQ/RHqs018qerIjjhKImGR1KfvEpqh2L64yVQbTz9jfTw2D4Vd5D
         TO/RIGxkXthEZHtWgZiwJqtKtdvzrs0eCSx5wxpKLspxDvR6adgnkJQIbGqYRkYDyHKe
         FLhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JWuV1isC1L/1bzegDsOKLhH95T/l4TCS0CEvg9dA/9M=;
        b=pucxKTyPBqXD9taR4PsAMMrRyk0KW3oZ3QlTGjMUDqz2rTqNFI3E6TPVMt3vf7pFkr
         WCrOkwcmuZkmDwfM72Lp6N3iN/iAskHF+MzXNfy5xLED6zA9JsPAk+EAERnvBUwUaIie
         agrNZtD4ulz5NEpAj1vaWDcvi6Hjeble8ZmIIaZOTkVXZtuJahWsW2kz8MYu+BH3PtFt
         0uTmrv4O9/CwtwktHR7oH32JwGun4cnqXIsJzvOonYL2Y6NZI44ctrlkHB28wLT4KVQ6
         aQnYv4r1+sCR6UeYvE3Wo9sq25iuuyPG0AJshe7MRZPHYxMKwK50n63Spa9W8sPTAXwE
         3W3w==
X-Gm-Message-State: APjAAAVkhuW4oIyxjMCr7lI50JsjVzINFoy3gZoeJ1B6llqUtjt+xeS6
	nVkdAROtIIdqDuil6reZiauNT5sa6XU=
X-Received: by 2002:a65:62d4:: with SMTP id m20mr23091410pgv.416.1553513260987;
        Mon, 25 Mar 2019 04:27:40 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.56.3])
        by smtp.gmail.com with ESMTPSA id t22sm21432899pgu.45.2019.03.25.04.27.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 04:27:40 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v5 3/3] staging: vt6655: lines should not end with a parentheses
Date: Mon, 25 Mar 2019 16:57:24 +0530
Message-Id: <20190325112724.20209-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Adjust code to fix the style issue-lines should not end with a
parentheses

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v5:
 -assembled all patches together

 drivers/staging/vt6655/rf.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 97b90bbf5770..72475586a5ee 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -766,11 +766,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool RFbSetPower(
-	struct vnt_private *priv,
-	unsigned int rate,
-	u16 uCH
-)
+bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH)
 {
 	bool ret = true;
 	unsigned char byPwr = 0;
@@ -905,11 +901,7 @@ bool RFbRawSetPower(
  *
  */
 void
-RFvRSSITodBm(
-	struct vnt_private *priv,
-	unsigned char byCurrRSSI,
-	long *pldBm
-	)
+RFvRSSITodBm(struct vnt_private *priv, unsigned char byCurrRSSI, long *pldBm)
 {
 	unsigned char byIdx = (((byCurrRSSI & 0xC0) >> 6) & 0x03);
 	long b = (byCurrRSSI & 0x3F);
-- 
2.17.1


