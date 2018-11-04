X-GM-THRID: 6620120308618625024
X-Received: by 2002:adf:f5ce:: with SMTP id k14-v6mr913009wrp.8.1541366872494;
        Sun, 04 Nov 2018 13:27:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4cc5:: with SMTP id c5-v6ls1078927wrt.30.gmail; Sun, 04
 Nov 2018 13:27:51 -0800 (PST)
X-Google-Smtp-Source: AJdET5fIyoh/NLw91Y6Ekc+6vt3FByhujeVUkdPmcrVUbdkSY0npYXztyncaeDJCKBCS47YQX3ld
X-Received: by 2002:adf:f192:: with SMTP id h18-v6mr1961270wro.1.1541366871841;
        Sun, 04 Nov 2018 13:27:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541366871; cv=pass;
        d=google.com; s=arc-20160816;
        b=ou3N8oWQ3DaII2e3iW9UsxYoJQEJcjhT2o/jMckda2uZ4+aEBoxhko/iYSPPwzMBmV
         FavS54IK40Ycz9R8r6fLkt8pf7BWjo3AfLstyvHId4jJG15IWPLinKCSyZoL311nMRfq
         UD320E15djsoTBpuPBrUF5mCT9fnUwolc9zdNtRS1CnvwIL7i0Q+qiY9rnVsbjMjbKIu
         +pAUaswNkleM5IwJL9UIe6JXEtqwmUv+tMEzc8S1gd7RN1TNplgy2GZdb+JgM2Tki9KB
         Sl6qLn+JHHXlc43WcMPGgXzDWlGxe4sYuFxiSrFjhj6tFxT7NJRAGt4DRLVjgzuqMl9y
         CwmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=iCgB8RX7RY5VDObCDup6JkANAP9SIVXyuemde9JoHcY=;
        b=sgPTRcH8DBD6nMP/GbTPEZJjWoQIz7ca2ek7F0R951lG4t36T/tJjb+S7Wg9O0F0EG
         /diNtFg5HldkW7MrUPqob+waJNyVGrVBStExcYYlw/Tt/xcsbaR7eqU+Z7cwLV2YHE2z
         QRYyLydaklMkQ/uHcV6WxyE7eu/nXuwC2f3OvifP7KDBr5hX5qVUAKuwrTGtpVKgzOqg
         SJfVwZPxo3dFM0Xli6J9I165BqNhnNI84M3V98+7nOnL/1JggAlaYyH/5E9bH2cNHeNz
         +x9q9fo7K6zNpa9kDV8Qp6n1J7spNrXfDtBm0tCNRdNSA2lFVovCts/MZOvParzM2nIy
         rBAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=dZN3ydY0;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id p19-v6si254830wmc.1.2018.11.04.13.27.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 13:27:51 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=dZN3ydY0;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541366870; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=TW66EW3I8RZe5OshNfnksFCQNfTAjCO1AJ9uZb8XzqyGR3uTPAYqZwrbMAgJkIpyXecv51rFgL0kvOTf5Tet8jxesEK/J+4ExzvwySM1VduvY5gSTFehzF+RoOzSt9pgvaOSqA+SfWlk7QPz+DakSiSv9jHviZx89lWhcYbj0gE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541366870; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=iCgB8RX7RY5VDObCDup6JkANAP9SIVXyuemde9JoHcY=; 
	b=hm2jKdbeDIDeuk7gqUikTldYLji7yEfvCheG9zOEPi6JBNwqD1lRZwlodiad7hDLvv44GLBBPYC/HC6/ix0d1SqoOFK3uYSjlWFWG+yhEBRsz9a9NND+FB+dzIqDnD1AfPaV2hbwnwQK/8VVZe4lfWmR55CRcDufmkda3ZvMyTs=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541366870;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=280; bh=iCgB8RX7RY5VDObCDup6JkANAP9SIVXyuemde9JoHcY=;
	b=dZN3ydY02Vnz7IKXUR32Teu+VvolpPcOqNMDOYsWzQpbXgG6XYsPpLIeVybP/Jw5
	caA4W3CftFT9MA+oAyX9g2fEtSp7y0oHBKMV7/05IKUR/BytSY5xmLml/GuO82TV5lw
	doij34G67Bl/D++MSmM8PX1fM0t9fmXXDzjm51+o=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541366868766137.43444132703155; Sun, 4 Nov 2018 22:27:48 +0100 (CET)
Date: Sun, 4 Nov 2018 21:27:47 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: greybus: fix styling and bool comparison
Message-ID: <cover.1541366816.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix styling and bool comparison per coccinelle warnings.

Ioannis Valasakis (2):
  staging: greybus: remove comparison to BOOL
  staging: graybus: match open parentheses

 drivers/staging/greybus/es2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.19.1



