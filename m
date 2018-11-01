X-GM-THRID: 6618902461805494272
X-Received: by 2002:a50:b67b:: with SMTP id c56-v6mr1373771ede.4.1541083320721;
        Thu, 01 Nov 2018 07:42:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1142:: with SMTP id i2-v6ls1210060eja.2.gmail; Thu,
 01 Nov 2018 07:41:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fSi3b0UI20/sifZiEfSNOA6ygwjwyv6Hb4ZNOhitTLO575kwU95v2WWvYwZMZKVcFFHU/O
X-Received: by 2002:a17:906:943:: with SMTP id j3-v6mr397792ejd.16.1541083319802;
        Thu, 01 Nov 2018 07:41:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541083319; cv=pass;
        d=google.com; s=arc-20160816;
        b=XvQm7rHjKRR09vRUSo3nX05ssbuCzeAZBOTeZpBoac5vLOzQQrh3Su7m9lRkyHDVMa
         iq5/7xiiYqReXD81YbDmvBF3KGnbLu6Bj4VrofXY1DhtpDXpV0HJ8/+AIZbrIGgsyDfC
         xqBh1wkht6JUWEouOfCR+E2md6NWc4TmYRDguMSGS5RKFIBXWLGMM3ipMzwMYHTPB6jW
         /Ggp682F93sFYfQ6yttDJD29ICuqAig24dVA6Bq39vtvKyr4FIyjHwGOl1ZxzuFjPqlk
         1FywXJKYuaBFf+upKyXXL2shw4rwIyK4I9RTrSw5x1J6zSSfdjmj9o7MoNFB5GMFL+7B
         RfwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=WlrKr7Zcprz4RQseipaC5omIE6UxEyTD9C1C0FE4CGk=;
        b=y0UxsFBQEy1m5vd1DuW290gHqsCRjU8sZMUC/xcLV+2Gcbudp8aXdd2K9h2m3gDpBB
         DoTgU9ombF3E86fysBC0+E9poSwPoz/ADAnBrZ2iysAB25CMCIhwa1pBIkFvyAAuRrgL
         Thkig6hF9Cs7UTdsRWgjs+NY57+vvG5wFK4+c8M4lrb2oY5BsXEHQWG0Y18PeECS7nDT
         CODzhNzkGzL+1AnSq3me/Mx4bTIqTWFqn84zDW9HsdyoD9bCnLZahRcot857esgwO4XO
         Q97H/qQYwBDesD7tEQJ0kkULTD8SIA5+clG8TXTtAXj1lOFj/BWtkrdUKUA0fb6DiCg+
         us7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=LE0ZZBdD;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o10-v6si956566ejc.0.2018.11.01.07.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 07:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=LE0ZZBdD;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541083317; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=ZAwP1Qsfn79dctNji7W3S13qh73oTjIIMAhSlrRpUXlq8heagG2JnySWhTu5jpLJmHX6NLikpIvbloxOSjdYVmcdpQkqZ7FkFPP9FUYYdHQqnofJ0iws7xnamr4dCb6Vsaq/ybwDTfgpDyrdRMbYFTD6mAs32jIeEqebNQNrQI8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541083317; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=WlrKr7Zcprz4RQseipaC5omIE6UxEyTD9C1C0FE4CGk=; 
	b=D9pZMre096+8mniw+Ak7poi7vMMR/sqpor4+v2Anj/14J3NhnexRPixoL2vIxX6mOkC4Xjl3IKqBeutbi/eB6hAScmtAjfeadh44EkfxQAqRTLhy0VlxhxHwbNrUQ0TskrM7HDy74xX6gbfSOFrvT1DRKo7YpaWUz1y2OEqOdrk=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541083317;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1525; bh=WlrKr7Zcprz4RQseipaC5omIE6UxEyTD9C1C0FE4CGk=;
	b=LE0ZZBdDvJKGAJgyottiX+l5wn8TVYGCPGPDJAWlCiTUkFbFWv1ythZwg2x30dAO
	xGMcl6rKf8DuYuw0mHfWKSzi5fq1rdJiNokhjzfVe/QS3V86CVKn9YtiP5R9c6EYMXh
	zuI0C+OkAu6adkdvuq2+/oWgHRHKX31tyF8Vrkmo=
Received: from kvasir.local (pat-pool-138.crick.ac.uk [212.219.94.138]) by mx.zoho.eu
	with SMTPS id 1541083316414117.91412268852923; Thu, 1 Nov 2018 15:41:56 +0100 (CET)
Date: Thu, 1 Nov 2018 14:41:54 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: octeon: Fix style issues
Message-ID: <20181101144154.GA23517@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix mismatch parentheses and style issues.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/octeon/ethernet.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 9b15c9ed844b..efbc48b96f70 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -141,8 +141,8 @@ static void cvm_oct_periodic_worker(struct work_struct *work)
 	if (priv->poll)
 		priv->poll(cvm_oct_device[priv->port]);
 
-	cvm_oct_device[priv->port]->netdev_ops->ndo_get_stats(
-						cvm_oct_device[priv->port]);
+	cvm_oct_device[priv->port]->netdev_ops->ndo_get_stats
+						(cvm_oct_device[priv->port]);
 
 	if (!atomic_read(&cvm_oct_poll_queue_stopping))
 		schedule_delayed_work(&priv->port_periodic_work, HZ);
@@ -621,8 +621,8 @@ static const struct net_device_ops cvm_oct_pow_netdev_ops = {
 #endif
 };
 
-static struct device_node *cvm_oct_of_get_child(
-				const struct device_node *parent, int reg_val)
+static struct device_node *cvm_oct_of_get_child
+				(const struct device_node *parent, int reg_val)
 {
 	struct device_node *node = NULL;
 	int size;
@@ -818,7 +818,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 			priv = netdev_priv(dev);
 			priv->netdev = dev;
 			priv->of_node = cvm_oct_node_for_port(pip, interface,
-								port_index);
+							      port_index);
 
 			INIT_DELAYED_WORK(&priv->port_periodic_work,
 					  cvm_oct_periodic_worker);
-- 
2.19.1



