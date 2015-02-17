X-GM-THRID: 160604094464
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,19875a194eebcbeb
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.142.102 with SMTP id rv6mr439149obb.47.1424200617127;
        Tue, 17 Feb 2015 11:16:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.13 with SMTP id g13ls1559953iod.2.gmail; Tue, 17 Feb
 2015 11:16:56 -0800 (PST)
X-Received: by 10.43.9.72 with SMTP id ov8mr28707501icb.20.1424200616835;
        Tue, 17 Feb 2015 11:16:56 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x236.google.com (mail-qa0-x236.google.com. [2607:f8b0:400d:c00::236])
        by gmr-mx.google.com with ESMTPS id kt5si4159449qcb.3.2015.02.17.11.16.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 11:16:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::236 as permitted sender) client-ip=2607:f8b0:400d:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x236.google.com with SMTP id x12so27781339qac.13
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 11:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=GQ5/ksHZ6MKk+qCgnb1HKrcWC6a8bn9AG+pf4UhPcAI=;
        b=rNnZtzgG2F+gLPr+Zi14D1epbVwriT35aOaZpJVf7QaYer6/x0GwbO9Kw/Gs2YIg7x
         b0LuQoTJUg5hXqksdp+4lYvnZfhAt0VuCs1c3i2K3mE9ZHSsehMYdB6lNcLcVQFceNxf
         M7a+H4hnC2luTUEymP9LPNwsF0WAiQjmPr6FjLbCThUNfUH2SZrTk50pH9XNgkdTdxbx
         KS+tibLeEVAvCZcQN7d3j8SOykaJzeMxO4M6ugf7/DhyQOypK5+FofkFG8alZDPRXAFr
         r967LYfwaubmmgN4tgvi5feHnX5ssSZqUSejChI424BWLvRhgWa7a0a2sV/x8X39kDg7
         5Lng==
X-Received: by 10.229.80.3 with SMTP id r3mr1029145qck.23.1424200616754;
        Tue, 17 Feb 2015 11:16:56 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id n77sm2008946qha.19.2015.02.17.11.16.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 11:16:55 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E393A7.3030402@gmail.com>
Date: Tue, 17 Feb 2015 14:16:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: fix spacing errors
References: <20150217174851.GA7053@localhost.localdomain>
In-Reply-To: <20150217174851.GA7053@localhost.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/17/15 12:48, Aya Mahfouz wrote:
> This patch fixes the following checkpatch.pl errors for
> the file fb_bd663474.c:
> 
> ERROR: space prohibited before that close parenthesis ')'
> ERROR: space prohibited after that open parenthesis '('
> ERROR: space required after that ','
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
> v1: I know that typically one patch should fix one type of
> checkpatch.pl error/warning but given that they are all 
> spacing issues, I merged them into one patch.
> 
>  drivers/staging/fbtft/fb_bd663474.c | 100 ++++++++++++++++++------------------
>  1 file changed, 50 insertions(+), 50 deletions(-)

The patch looks good - your reasoning for merging the patch is sound too
since you would otherwise have to modify the same lines 2-3 times.

The only issue is that you shouldn't put comments below the
signed-off-by line. The comment you added about merging the 3 rounds of
changes into one is valid, but I would do that in a cover letter, if you
don't feel that is relevant to go into the commit message.
Using '--cover-letter' with git format-patch will generate that for you.

Cheers,
Jes


> diff --git a/drivers/staging/fbtft/fb_bd663474.c b/drivers/staging/fbtft/fb_bd663474.c
> index 7e00c60..17a2162 100644
> --- a/drivers/staging/fbtft/fb_bd663474.c
> +++ b/drivers/staging/fbtft/fb_bd663474.c
> @@ -47,49 +47,49 @@ static int init_display(struct fbtft_par *par)
>  	/* Initialization sequence from Lib_UTFT */
>  
>  	/* oscillator start */
> -	write_reg(par, 0x000,0x0001);	/*oscillator 0: stop, 1: operation */
> +	write_reg(par, 0x000, 0x0001);	/*oscillator 0: stop, 1: operation */
>  	mdelay(10);
>  
>  	/* Power settings */
> -	write_reg(par, 0x100, 0x0000 ); /* power supply setup */
> -	write_reg(par, 0x101, 0x0000 );
> -	write_reg(par, 0x102, 0x3110 );
> -	write_reg(par, 0x103, 0xe200 );
> -	write_reg(par, 0x110, 0x009d );
> -	write_reg(par, 0x111, 0x0022 );
> -	write_reg(par, 0x100, 0x0120 );
> -	mdelay( 20 );
> -
> -	write_reg(par, 0x100, 0x3120 );
> -	mdelay( 80 );
> +	write_reg(par, 0x100, 0x0000); /* power supply setup */
> +	write_reg(par, 0x101, 0x0000);
> +	write_reg(par, 0x102, 0x3110);
> +	write_reg(par, 0x103, 0xe200);
> +	write_reg(par, 0x110, 0x009d);
> +	write_reg(par, 0x111, 0x0022);
> +	write_reg(par, 0x100, 0x0120);
> +	mdelay(20);
> +
> +	write_reg(par, 0x100, 0x3120);
> +	mdelay(80);
>  	/* Display control */
> -	write_reg(par, 0x001, 0x0100 );
> -	write_reg(par, 0x002, 0x0000 );
> -	write_reg(par, 0x003, 0x1230 );
> -	write_reg(par, 0x006, 0x0000 );
> -	write_reg(par, 0x007, 0x0101 );
> -	write_reg(par, 0x008, 0x0808 );
> -	write_reg(par, 0x009, 0x0000 );
> -	write_reg(par, 0x00b, 0x0000 );
> -	write_reg(par, 0x00c, 0x0000 );
> -	write_reg(par, 0x00d, 0x0018 );
> +	write_reg(par, 0x001, 0x0100);
> +	write_reg(par, 0x002, 0x0000);
> +	write_reg(par, 0x003, 0x1230);
> +	write_reg(par, 0x006, 0x0000);
> +	write_reg(par, 0x007, 0x0101);
> +	write_reg(par, 0x008, 0x0808);
> +	write_reg(par, 0x009, 0x0000);
> +	write_reg(par, 0x00b, 0x0000);
> +	write_reg(par, 0x00c, 0x0000);
> +	write_reg(par, 0x00d, 0x0018);
>  	/* LTPS control settings */
> -	write_reg(par, 0x012, 0x0000 );
> -	write_reg(par, 0x013, 0x0000 );
> -	write_reg(par, 0x018, 0x0000 );
> -	write_reg(par, 0x019, 0x0000 );
> -
> -	write_reg(par, 0x203, 0x0000 );
> -	write_reg(par, 0x204, 0x0000 );
> -
> -	write_reg(par, 0x210, 0x0000 );
> -	write_reg(par, 0x211, 0x00ef );
> -	write_reg(par, 0x212, 0x0000 );
> -	write_reg(par, 0x213, 0x013f );
> -	write_reg(par, 0x214, 0x0000 );
> -	write_reg(par, 0x215, 0x0000 );
> -	write_reg(par, 0x216, 0x0000 );
> -	write_reg(par, 0x217, 0x0000 );
> +	write_reg(par, 0x012, 0x0000);
> +	write_reg(par, 0x013, 0x0000);
> +	write_reg(par, 0x018, 0x0000);
> +	write_reg(par, 0x019, 0x0000);
> +
> +	write_reg(par, 0x203, 0x0000);
> +	write_reg(par, 0x204, 0x0000);
> +
> +	write_reg(par, 0x210, 0x0000);
> +	write_reg(par, 0x211, 0x00ef);
> +	write_reg(par, 0x212, 0x0000);
> +	write_reg(par, 0x213, 0x013f);
> +	write_reg(par, 0x214, 0x0000);
> +	write_reg(par, 0x215, 0x0000);
> +	write_reg(par, 0x216, 0x0000);
> +	write_reg(par, 0x217, 0x0000);
>  
>  	/* Gray scale settings */
>  	write_reg(par, 0x300, 0x5343);
> @@ -104,18 +104,18 @@ static int init_display(struct fbtft_par *par)
>  	write_reg(par, 0x309, 0x050a);
>  
>  	/* RAM access settings */
> -	write_reg(par, 0x400, 0x4027 );
> -	write_reg(par, 0x401, 0x0000 );
> -	write_reg(par, 0x402, 0x0000 );  /* First screen drive position (1) */
> -	write_reg(par, 0x403, 0x013f );  /* First screen drive position (2) */
> -	write_reg(par, 0x404, 0x0000 );
> -
> -	write_reg(par, 0x200, 0x0000 );
> -	write_reg(par, 0x201, 0x0000 );
> -	write_reg(par, 0x100, 0x7120 );
> -	write_reg(par, 0x007, 0x0103 );
> -	mdelay( 10 );
> -	write_reg(par, 0x007, 0x0113 );
> +	write_reg(par, 0x400, 0x4027);
> +	write_reg(par, 0x401, 0x0000);
> +	write_reg(par, 0x402, 0x0000);  /* First screen drive position (1) */
> +	write_reg(par, 0x403, 0x013f);  /* First screen drive position (2) */
> +	write_reg(par, 0x404, 0x0000);
> +
> +	write_reg(par, 0x200, 0x0000);
> +	write_reg(par, 0x201, 0x0000);
> +	write_reg(par, 0x100, 0x7120);
> +	write_reg(par, 0x007, 0x0103);
> +	mdelay(10);
> +	write_reg(par, 0x007, 0x0113);
>  
>  	return 0;
>  }
> 


