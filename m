X-GM-THRID: 6620566870307110912
X-Received: by 2002:adf:f192:: with SMTP id h18-v6mr2485760wro.1.1541470861452;
        Mon, 05 Nov 2018 18:21:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ebc3:: with SMTP id v3-v6ls4826400wrn.4.gmail; Mon, 05
 Nov 2018 18:21:00 -0800 (PST)
X-Google-Smtp-Source: AJdET5c7UGly2jC3NlDOGqvOUjv/102ozyMyc4diXiDe/MrgB8832glX6X2KAQ38abPEyx+Vdk7B
X-Received: by 2002:adf:fb0c:: with SMTP id c12-v6mr2431117wrr.22.1541470860867;
        Mon, 05 Nov 2018 18:21:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541470860; cv=pass;
        d=google.com; s=arc-20160816;
        b=AlK+Df6cLBSKI2Jr/gwnPiDkfwFBXTErCFBn2bROh53PjMLqSbtx4XdlTkbSi94GnV
         TI5ofOUE7WZ/lIp2bc/0JkQioPQb+WDQZ0pf7a4nE/qJQgVO/1pe2aiPyktnC2TlcqRC
         xW91fmpiCFs3PbX1uBUgbbWMh0dlAAVx9SgvyIwY/moKxodP3CzKQLIwSeXdvP6WbkyD
         W9C7RIRgNXZTK+SxqvAXYrwScl5uH2EVBdYaLwgVzJpIJsltA5jO12EGEumjIJ+WdQiz
         02B5BfM7+7DQWxrDSVfU3tj7dJeptRIRDrXrK0pOfvmu4yNMH4ZGzzf5s95bbFclEi+W
         c+lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CFAGofUBuUBLtYeEAPtDyOh5iC52zUksbYQBqN6XkZ4=;
        b=WBzzC/JFHUTuZb+ImqtSl//JvdL1IjR8JZ7E/ipyj+fzp3ESCgjDLhKrXXYC5WTKto
         2AKVlWabRdN41iVxjPzxJjRLyuf1qYQd9HQTwJf9aErpI5X9BrBFiKvQ+vEXyRkaq5QQ
         1FpYZBrPSO+NceLU+i6zJKIPMBeI8wPy5hvh5gk/XoWDkijGlUs3igNxgbBdW+fGV5i2
         ZYoIC482io9ViN1lzWjzdOQ3G4PsquYooTbZdARd3mH/zKUF5vZpGEiYcMVr7658hy31
         UgVImIDXfKSuSUciAR+e0qoTK91ODwSB7Agmzfn4J5UjDdrFmZHKhTbzzYxCukqlhUsd
         iuAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=DDIR6p+P;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z139-v6si16968wmc.0.2018.11.05.18.21.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 18:21:00 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=DDIR6p+P;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541470859; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=DxvjID62uWG40UkvG9gdouobUxBaF6++NkBHznT3KGACctkLcJ/cEidF7U4wxhX/OAEMPYAU/vvCuKNs6iXoeXpXplOJTlaQHTaJb4pC8+DTmrsyHvRTxLh8MHb1jTDrSbjEJg224lk6JBrZygLGujkw9a6fFynWnY0BevK88+Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541470859; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=CFAGofUBuUBLtYeEAPtDyOh5iC52zUksbYQBqN6XkZ4=; 
	b=Tp3XBVpcl30L63Z4dihODgiYdFcbQmUL7z4sNZCjRPujwnIRISlQh+w8+5I5E1h+yr0qwvsZsLWeLFcVvICl96gkt6gzhSeirzFlh5lLAupz5BnXvVn7GqUFJ5r6YKk7lTlWZ9RZ1gkaSKXRaiypEjRU4hxlf7fM0dhw1MOCbak=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541470859;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=806; bh=CFAGofUBuUBLtYeEAPtDyOh5iC52zUksbYQBqN6XkZ4=;
	b=DDIR6p+PpGICD+uBrFlSrEX3xSncnD0VpUi5J2yVKxn6oQmwASS8N8YgUo4HBFkV
	W4uckiix5rPhoyr6MORfP1UsTtez4OLH/jEQQkb0r3OF19+fkf7QTl5pvd/cMPT+iPQ
	MZSSNUHXmiHLufxCSRt9nzBIhiC6QRQ65Vu9BxQM=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 154147085772851.925713426935886; Tue, 6 Nov 2018 03:20:57 +0100 (CET)
Date: Tue, 6 Nov 2018 02:20:56 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: speakup: move arguments to reduce 80 chars limit
Message-ID: <5971cdd0ab4024174dddd6e1fdfd98f5f26a6027.1541470798.git.code@wizofe.uk>
References: <cover.1541470798.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541470798.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Move the arguments one line below to remove the warning of the 80 chars
limit. Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/speakup/speakup_acntpc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_acntpc.c b/drivers/staging/speakup/speakup_acntpc.c
index d44ada9869ae..c94328a5bd4a 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -298,7 +298,8 @@ static void accent_release(void)
 {
 	spk_stop_serial_interrupt();
 	if (speakup_info.port_tts)
-		synth_release_region(speakup_info.port_tts - 1, SYNTH_IO_EXTENT);
+		synth_release_region(speakup_info.port_tts - 1,
+				     SYNTH_IO_EXTENT);
 	speakup_info.port_tts = 0;
 }
 
-- 
2.19.1



