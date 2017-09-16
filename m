X-GM-THRID: 6466237555565133824
X-Received: by 10.200.50.44 with SMTP id x41mr11899322qta.57.1505538252959;
        Fri, 15 Sep 2017 22:04:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.5 with SMTP id j5ls2210201ita.14.canary-gmail; Fri, 15
 Sep 2017 22:04:12 -0700 (PDT)
X-Received: by 10.13.198.65 with SMTP id i62mr17465539ywd.18.1505538252135;
        Fri, 15 Sep 2017 22:04:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505538252; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5T6E4uHsB4yeBq+0PYNSa8F2qb3jpVQLhBkfKI+a+EXdeR9+c+ghX9NoQme34HmMf
         nIi22ktVRtrRThuD363e+29N/Jns8AHGJBGTjIhDjutgRhBiJlhOx7HSrN0hZhdVcUUE
         WlKerJ5HSs+XJ2La77ag6PHDBjD8WTKlqogxFDA4tL9EYWVX2Z0RbDY0HKeFbpmUvsYy
         SencQ9+XNvVpcy1uERDmOhhoSYZs4Ids7GrzYDRC7tJGV/hq+lBFb+9Vc/pnBky4Ir/R
         v/x9Na7surNeL25eJW0z6ps0QrB4MGXwQCyEI25rSDag2Psmal/x9J6fWahJLtnn7q0V
         iysg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=ozFwDmFYyHJnRzZrctFPc42HeBlw9/w0RQhwiHY7qIQ=;
        b=AZyQftTcUV1/GTLoYKpk92DBl+XR7rdlvSfhZRa6pmYwQZQokZn5Uh8BTFJPU3fZed
         +5jGAbkK6467XsyO2O3S6N56TvRSwEj5x75cd4TimX/mz7LEMyeV3dg3QGyXx+stmfuM
         HKKECkz0UKgfW2iDzXWwP/nCSWelK7ymd2AYiAAR/3Ng0/pv+drW4KhUQbiot+iIRqZg
         dCvJyvBiEhnB7Ax4VSfTHxD/DNnzaheNnvG5/iUuMdwCfbtxd94Nh/X8oFkmwVSdpcJo
         TqffA4oG+XFgqeRERQHpZ/qXGcZXx6bZK9fsDtkEpFKEjdUTW4Dj7s8oRPv4tD81nD8W
         NzDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gl9wJQOj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 88si235428pfm.20.2017.09.15.22.04.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 22:04:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gl9wJQOj;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so2120135pfj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 22:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ozFwDmFYyHJnRzZrctFPc42HeBlw9/w0RQhwiHY7qIQ=;
        b=Gl9wJQOjqC8b/UviospShR7BLBScwPlKSW2zsppJC1CY+4RwBQfsp/kUg8JWcu31UA
         J3O2ZvjVeVB0d1oNh3mVhinMzHvPL1TgyKGb1Pfpwk3Lp3n/HGUwDX+RrY8wThLfz9g+
         Y29YELoRm2f26EDttxI4/kfnu7KYeIkA8Z/6DJyHSppmb0i+JWExszp4YHwwVW0YYP/F
         Xa1vyoM6zkiDhD+sSEJDzzQa/kY8uQRJ04tXtUR1kXkkP/Z9tRjzbPdEuSKpbHsNQFg1
         ajTf1iHi15ac1X5v+T6q3v2LinRTZn4PrsP87y74WXaZmGn+OG2qI6NAO0GPZ8yQ2vla
         MkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ozFwDmFYyHJnRzZrctFPc42HeBlw9/w0RQhwiHY7qIQ=;
        b=H0Qr0S3mb1e+aoKyYQMWU2Z/8BlFlnaOwGdS0JIqJSAkH5j1XW1xbtK1zCf7EfXzkk
         311waBL2MPlP4jezJlecLhRGghiTwvxPHfCE33YWF4ozIP1BdLDjTzQAPDEQIFnfXUmF
         K8K30B+CSX0LgCDPhtAM4rrCpwi9LjJ8E+BBSNcV2cd7wcBHfWyEDv2Vdjd409PyVbeg
         ECimNr8B5MSfiiC4qR028qHxBSTPZu5GyKtNuJabNjgpjysBQIr7DGAP9fc1gMQ6wATE
         Nl42aUmEDtaqbDEPO8TEVmTGvG9OThRLEZBU3s28HGogHYtge5j0C1mtA4vfpvNm6tAg
         T1pQ==
X-Gm-Message-State: AHPjjUh8CICl1fzLYYMKPGVVsXNR6B6Rqlg2Y6i0r1PTLYLbRhJl+kfo
	jI62XBEdlFiiydlI
X-Google-Smtp-Source: ADKCNb6gn0QAy+1BiBEFlFq0jx75b65KXxzCcsqWC99sO6e0tWhEbUsINuvpk7aYGh5S0lhlWyARhA==
X-Received: by 10.98.201.197 with SMTP id l66mr26238052pfk.135.1505538251416;
        Fri, 15 Sep 2017 22:04:11 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([103.231.132.5])
        by smtp.gmail.com with ESMTPSA id m15sm4275127pfh.35.2017.09.15.22.04.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 22:04:10 -0700 (PDT)
Date: Sat, 16 Sep 2017 10:34:05 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: speakup: Remove print following unsuccessful kmalloc
Message-ID: <20170916050400.GA31327@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove print statement following unsuccessful kmalloc when there
is not enough memory. Kmalloc and variants normally produce a
backtrace in such a case. Hence, a print statement is not necessary.

Found using the following Coccinelle semantic patch:

@@
identifier i;
@@

i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|
devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\|
kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
   kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...));
(
if (i == NULL)
{
-\(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
...when any
}
|
if (!i)
{
-\(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
...when any
}
)

@@
identifier i;
@@
(
- if (i == NULL) {
+ if (i == NULL)
       return ...;
- }
|
- if (!i) {
+ if (!i)
       return ...;
- }
)

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/speakup/spk_ttyio.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 4d7d8f2..a6330e2 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -51,10 +51,8 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
 	speakup_tty = tty;
 
 	ldisc_data = kmalloc(sizeof(struct spk_ldisc_data), GFP_KERNEL);
-	if (!ldisc_data) {
-		pr_err("speakup: Failed to allocate ldisc_data.\n");
+	if (!ldisc_data)
 		return -ENOMEM;
-	}
 
 	sema_init(&ldisc_data->sem, 0);
 	ldisc_data->buf_free = true;
-- 
2.7.4


