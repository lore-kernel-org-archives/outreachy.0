X-GM-THRID: 6613499587920396288
X-Received: by 2002:a0c:bd9e:: with SMTP id n30mr23363855qvg.59.1539845341639;
        Wed, 17 Oct 2018 23:49:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:257d:: with SMTP id 58-v6ls11785443qtn.7.gmail; Wed, 17
 Oct 2018 23:49:01 -0700 (PDT)
X-Received: by 2002:ac8:31f5:: with SMTP id i50-v6mr124619qte.33.1539845341060;
        Wed, 17 Oct 2018 23:49:01 -0700 (PDT)
Received: by 2002:a37:c17:0:0:0:0:0 with SMTP id 23-v6msqkm;
        Wed, 17 Oct 2018 23:46:21 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62L8GnmKOr4NYJtjyERUNW91r2IYq4Icwvca35CJ6k40OPlO0KPEXifiVJy3JjRBeFMayK8
X-Received: by 2002:a19:6759:: with SMTP id e25-v6mr482869lfj.42.1539845180984;
        Wed, 17 Oct 2018 23:46:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539845180; cv=none;
        d=google.com; s=arc-20160816;
        b=vrrC0SNBsj4LvMRNsR0otwqyR7K5eBI7J7AgBAj/oduJ7QeOReqWfxr3tx0EYNUsZH
         bpDfBA2OBil/TmAmA8QvtceagRdRzXNR2hCzl+v5TZ/dGZiqKFRGFvAp2rGlmMxDRM+q
         CWjDR1u7L6ynMvRuKsFZNLhf9jwgpjr5SW1/Vl2zxP6dmL7t1mu+vRejhrvLy7tSEn7z
         eFBHMYgRKR5WjFZ8olmyFNU8r7YCzvLlrWryMPmElQuufBNsI+ToYZ1/DMl5TcrDJrK2
         inltHDWKfYT28aLmIsQEn1fLigFSszzm9/gSbieWAntqgNdjiKmvOj2KKND+PfXBo/CN
         0qCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=4vkopGLARPx9nR2AsHY3ybAs7IKQu02fk2bbhpIA4aY=;
        b=qmI4O57ltcjW6cLuFFgZ4di/a2B5ZZfHfE0sObK9pnhdIxEKX4eKIwod7lWjPbV/mh
         BqlpZaG2zBN3uRlZFs5sA4X7MKUvNXdjs1/GKzPCeZYwNcdvy2dY5h2MR+qOe6tMT6+T
         iTQeH7C+ZtNXzakfdCy01S13EXbsL/ATIaqCiBg2+QYDFA5VHlBaWcf+pc1ed+mUMLRM
         XmWCfVVSAz8tr58GTvCcWA69Zq7SZY3La1N7cfq6al23avYbfjuHDRTZbonBhuMUN166
         e0eRITRCX0zEosaDIbIwQH685ma8yjQoLhNLpVV1/W0KMlx7mLdQ4JC0lh3X82iiuu/8
         h4fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id r79-v6si711880ljr.3.2018.10.17.23.46.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 23:46:20 -0700 (PDT)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 2DB3991A;
	Thu, 18 Oct 2018 08:46:19 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7BRLp95z_gLS; Thu, 18 Oct 2018 08:46:18 +0200 (CEST)
Received: from function (LFbn-BOR-1-169-137.w90-50.abo.wanadoo.fr [90.50.25.137])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 4855E6CD;
	Thu, 18 Oct 2018 08:46:18 +0200 (CEST)
Received: from samy by function with local (Exim 4.91)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1gD22Q-0004YS-KQ; Thu, 18 Oct 2018 08:44:06 +0200
Date: Thu, 18 Oct 2018 08:44:06 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Maya Nakamura <m.maya.nakamura@gmail.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: Add a pair of braces
Message-ID: <20181018064406.dtrl5vih72nim3j5@function>
References: <20181018011558.GA2255@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20181018011558.GA2255@k-vBox>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Maya Nakamura, le mer. 17 oct. 2018 18:16:00 -0700, a ecrit:
> Add a pair of braces to make all arms of the if statement consistent.
> Issue found by checkpatch.pl.
> 
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>

Acked-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/staging/speakup/spk_ttyio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
> index eac63aab8162..979e3ae249c1 100644
> --- a/drivers/staging/speakup/spk_ttyio.c
> +++ b/drivers/staging/speakup/spk_ttyio.c
> @@ -227,9 +227,9 @@ static int spk_ttyio_out_unicode(struct spk_synth *in_synth, u16 ch)
>  {
>  	int ret;
>  
> -	if (ch < 0x80)
> +	if (ch < 0x80) {
>  		ret = spk_ttyio_out(in_synth, ch);
> -	else if (ch < 0x800) {
> +	} else if (ch < 0x800) {
>  		ret  = spk_ttyio_out(in_synth, 0xc0 | (ch >> 6));
>  		ret &= spk_ttyio_out(in_synth, 0x80 | (ch & 0x3f));
>  	} else {
> -- 
> 2.17.1
> 

-- 
Samuel
 je n ai cité aucun message et sur irc on parle effectivement comme des
 enfants de 5 ans na!
 > 3. Quand tu cite un message, répond _après_ ce que tu cites !
 -+- Yota in : Guide du Neuneu d'Usenet - A un Yota près c'était bon -+-

