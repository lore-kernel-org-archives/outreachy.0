X-GM-THRID: 6621495393645494272
X-Received: by 2002:a2e:5d0c:: with SMTP id r12-v6mr529007ljb.8.1541687196444;
        Thu, 08 Nov 2018 06:26:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4210:: with SMTP id y16-v6ls159057lfh.16.gmail; Thu, 08
 Nov 2018 06:26:34 -0800 (PST)
X-Google-Smtp-Source: AJdET5f0YiDlXujL059DL3fb/ChU7MMPUyvOqNsTU5XAsRf2Bm9HOfD0BCHF1XNizMuYhe81KZyc
X-Received: by 2002:a19:99d0:: with SMTP id b199-v6mr489031lfe.4.1541687194803;
        Thu, 08 Nov 2018 06:26:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687194; cv=pass;
        d=google.com; s=arc-20160816;
        b=WO5C5B51QOaxFZL6iugskzeOE5n4himbHfRr48ABIGUX55dac4snT9/gFRJI+YZO2G
         4bVpohCgLCmB//VpK208Bpkir/RzoKIMRP64KmzUoUmXqcXX0+8aGj0dgJdEd+bFMfQH
         qr16BLyzrlZ1/GJ82qu6n2w/c6e8KGuHeohfskP7mG0/3AiB8U9waAayqlpctFBzCoIm
         +jbPjWGlhCOiLVQ2CyUlxv2RnuFS+gROyFKY8tHY51jd5wk2YOuiVBURKsYKEvjfnAHx
         j4ztqZlrQF/XORZGzJcnMwbNGZLcZpx3hHni246bjzvaJsKcGT1QMhuSzFWgJbWcL/TC
         w9UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IbC61pwIpTqKZ91OnHlirOY1h8j9JAMAb7qk1UkUiBU=;
        b=kRa+TlQnkNR7HrLRsqt24SYtGoL2zKQzKD8Y5Y+xbaLLbeSpZX4Gswog3ErbfmOx5O
         fOHB3ubXfzS2QnyhfrSSRSIFfzN0057nsxMieAckCBYIMeNxiVIv/bRKx9lnARgIz8lt
         Mn0LHA39/5lQuIO2WfJ4Yb0YFX2KMBcwe50gNBn+hiG6M1CYMMU6o3XLOcgXYibILQdm
         vbByar0lWVkAUh0FcwXVFU6wICEueyDYQAq0PxsDQSbTn3zP6fZBKiObEfEkdLILdKLE
         nEF7BKYbCCjI8chCu+PaZagdbFRYNQ0aA/i9vazLjK+2Kwnq28LsDhCRd6jYvCY2dU6S
         jo/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QczDo7M1;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y12-v6si128534lfh.4.2018.11.08.06.26.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:26:34 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QczDo7M1;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687190; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=ErP6ARVTdoBh+qtc3XgIocZUJJ+9LK9dHZjczr3RCY+kiOwNSiTXkvXKcPkXS1xsK0ayW2FhdOkZyelv3dQY/zioM4YiZosaBac3GF8YG7dIusqgBKqUQT/MPcJGGyIX7ATc0nGJKoC41PE2TIqgWbdyDBK2r56Vy4hsrHZulr0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687190; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=IbC61pwIpTqKZ91OnHlirOY1h8j9JAMAb7qk1UkUiBU=; 
	b=cLlMQpgoZdgh3hZ5+o/2xT0ZGEtg2ZLEq1KGKiK1gQjEdoti/usO4C49zlKoKc4xWYJg3kJ3QillAk7Q62ogrt+79/XnliPqMluwjHv00SYZ0a04Q8IMjRoWBd4JZE04m4VM7LRPPDndUlXRsNtCTxHghGjjIvQCFOHnj74ALbk=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687190;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=887; bh=IbC61pwIpTqKZ91OnHlirOY1h8j9JAMAb7qk1UkUiBU=;
	b=QczDo7M1LwW78Iekv7Ex5UOtKmi58gUTVdof1F28i97wjs+uEOzcxAinI249DgBO
	Hl1v7zD3emudbo+OkVBDjTjjaxxe7GGGxN+M4GkoTDaZjF3B8/nYSmBsPgv381vgu01
	NiguxbBTdVGeKmk+kPh1HK5nZ1d5ATnmnzer4fBo=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687188758970.5497512961525; Thu, 8 Nov 2018 15:26:28 +0100 (CET)
Date: Thu, 8 Nov 2018 14:26:25 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 14/15] staging: greybus: remove comparison to BOOL
Message-ID: <105c012b38ed3e3645be74b8be3e99b5da57d707.1541686943.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove two instances of a comparison to BOOL.
Reported by coccinelle.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/es2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
index b082d81833a0..b4e3d6a3d523 100644
--- a/drivers/staging/greybus/es2.c
+++ b/drivers/staging/greybus/es2.c
@@ -316,8 +316,8 @@ static struct urb *next_free_urb(struct es2_ap_dev *es2, gfp_t gfp_mask)
 
 	/* Look in our pool of allocated urbs first, as that's the "fastest" */
 	for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
-		if (es2->cport_out_urb_busy[i] == false &&
-				es2->cport_out_urb_cancelled[i] == false) {
+		if (!es2->cport_out_urb_busy[i] &&
+		    !es2->cport_out_urb_cancelled[i]) {
 			es2->cport_out_urb_busy[i] = true;
 			urb = es2->cport_out_urb[i];
 			break;
-- 
2.19.1



