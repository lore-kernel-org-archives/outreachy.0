X-GM-THRID: 6619835502508900352
X-Received: by 2002:a17:902:243:: with SMTP id 61-v6mr92785plc.73.1541300560919;
        Sat, 03 Nov 2018 20:02:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b483:: with SMTP id y3-v6ls4119850plr.3.gmail; Sat,
 03 Nov 2018 20:02:40 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fcLnz+N9TZxmkEhZmU28BNbfPRWFJ30kkUl4zLmW01j/soeSDn0h/nj5PkcSIB4ifKGnWv
X-Received: by 2002:a17:902:6184:: with SMTP id u4-v6mr1365072plj.132.1541300560050;
        Sat, 03 Nov 2018 20:02:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541300560; cv=pass;
        d=google.com; s=arc-20160816;
        b=UHZG+ERVPUy2JFE3NqQTJr3U7DJEQrA4euLSb6xV5uUNtlzLkCyaCEhUi+NfEJUXwW
         OvgZKJYD+nykIpUsoSgKjeLCA7Oxq4CUsiOGme2d7aeDbFZf8I3aKIc4MTEItS6VzOyW
         2vQRCnB7v2DR0ftoseM1V2WNZIDm5QXfVmii/yAbvxEfa8DcDR8/m7A7UPdFEmCeb3EQ
         2OAa5wu0nWrij8sF5dx1Dnk//AV1tk9AakFNBAhgJlh2SrRbrJ9bUWBZeHC4VsluLlKu
         VkVw806X0758tPCy0ksjdDt2E5mxo9jVGwny4f4VZhFG39I72ehMx4XAUjKi4/kEdjD4
         PQ3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tPE+kigRW37vb83FDI0UPRfUABBN7DmMUxgbvhRj+7U=;
        b=K+RgEVC6l6sqEZ3ytQ6Ak9mMhMqGNyFDRdunp7fvc5uR6iWvEyiMY91etT4YHRakd/
         UeAT+1NSBI0BBnaaJ0pcbPphEZmjlfaV7hm4lx0UnuKGNqR3qAGzyK9JagNcKA2+9U4J
         4Eexij1b1toUUeCMoEolyt+XpVGwTSXBjOqvDv+08vE/z/5vhqJRKtuFzRFcLFLg1V06
         Wd8RPUvaSF8OPtltYQVVp8pzKu7TxEAC6zvNAc/HyrDsAR+yt2fzXYiyuvMWLorn8TVP
         inrNuPl0HDuO/JzCG32PXxvwN32pDfM2j8AkNTEg8Yf/tdvRml2KgWdpv8ze9x4ayZXB
         DaaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="Wy3/jD4V";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o12-v6si46733pfk.4.2018.11.03.20.02.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 20:02:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="Wy3/jD4V";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541300555; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=LLBvQ7BUdOoCE8XoNaV6fiirE8gOP0sV85u+sri2fMaYMCJ/LZxT0VXoMGDlqJFkOy19rgWLOyi5Pw1L2/ZIw2kvohKLhvZ+cgyZyV1GLwg7kqIQWkOUVuy7hlIZrK/44hXrg7PdCKvgB/3MHxiAyqWTlTJGCK0l1vaJQA+oBfs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541300555; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=tPE+kigRW37vb83FDI0UPRfUABBN7DmMUxgbvhRj+7U=; 
	b=N6h1XjIrsnNTVy28BsV8FbQ2+/c1+/vJLhEJXAMjH0/rUkOugjM9rStSh/52T74COMC6GRgh5qZpz6un0bydstgRZOIKjcH6+lOZA9KcoywTJtNhiib23JIm7SXcBlcTCIvRxOKN9xq4UX/pUG2wHFFpAevtO05aY8gvcfLa7pE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541300555;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=248; bh=tPE+kigRW37vb83FDI0UPRfUABBN7DmMUxgbvhRj+7U=;
	b=Wy3/jD4V4rjC2oREnes2pHrCzfuRoXkxa5OoOIPwPwu0Qtjurdqk9S5tFoTMCuZx
	l+AZqYGgqsNuKVnEqMc03HBdzCoLMlQm5ZYAHJnWfyUT0xosPEY22f8eGfqScvf+O46
	/mc/zvveRGrpuxMFf3Ewex/r0t29xplFkhwtAHk8=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541300553245745.4479316460398; Sun, 4 Nov 2018 04:02:33 +0100 (CET)
Date: Sun, 4 Nov 2018 03:02:31 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: zoran remove braces and replace BIT macro
Message-ID: <cover.1541300498.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Ioannis Valasakis (2):
  staging: zoran: replace masking with  BIT macro
  staging: zoran: remove unnecessary braces

 drivers/staging/media/zoran/zoran_device.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

-- 
2.19.1



