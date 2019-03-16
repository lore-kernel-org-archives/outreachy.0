X-GM-THRID: 6668772071902806016
X-Received: by 2002:ac8:1812:: with SMTP id q18mr6524869qtj.29.1552869488534;
        Sun, 17 Mar 2019 17:38:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls6007495qvc.2.gmail; Sun, 17 Mar
 2019 17:38:08 -0700 (PDT)
X-Received: by 2002:a0c:f553:: with SMTP id p19mr7909650qvm.27.1552869488045;
        Sun, 17 Mar 2019 17:38:08 -0700 (PDT)
Received: by 2002:a37:4d12:0:0:0:0:0 with SMTP id a18msqkb;
        Sat, 16 Mar 2019 15:50:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzyv/M7O1SlE63zjQhdQ/fKBP54LKa17p9vS+vOHbAPskShYuvW/4JOcnPn8pFJ9gSNlaJ6
X-Received: by 2002:a50:928a:: with SMTP id k10mr399269eda.10.1552776656733;
        Sat, 16 Mar 2019 15:50:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552776656; cv=none;
        d=google.com; s=arc-20160816;
        b=bNlX7FudRbB1eo9cwC4wb3tjVYr+WTwyGZ9mrDN1oDxrkOej1hNWfzBWDxekTnpq+9
         kQYzj8EP5/UoTCuiIh50VN3MbvGnMig0zpCQDLR8CkImGm6ZwWgeLgcdM4mvsWEgMcHq
         hgQtzj9G0iJyKmC1fKmoub04mWfzjkcIPX1yhnpJWou8GEpMaEY4+j1KZOmdihJr+PXL
         KM9Vm2Yvo6od0tiFUK6ELBUl3cX+ARqAPT9hMgBspN4R9eY4VASYrTs7PM2rTzlwlYtu
         DQOuPVS/lAGl6M88K2iVYcMoBVaHNaWrUR7m9OoX7fclrjHy1jGDj8AJE9ZFJLM/ODLE
         dc6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CkM9SNc0/++H7Gq0x8MD9AggoU7zlZSspXgVYn+ykgw=;
        b=MrYlsna8zS93VtTjFQ1QJ4jjx7SQyFZEBwDKwW7FUxKNOVNK/xQ/ssRcmnXIdgkQk3
         eXLYee9NHNGoQBCl/CCIqVh9zlEUvIL12keRE27IkiToBZ4dzsb/41L8APEpFbj7MNZd
         oo+k/IdobKfxmvrW3EtTKMKjr5fWdBjjrEK1WF7Aq+ZvYSUPlEbUTL0REYmtIVVFize/
         GKMLbnDrY1lWNWMcfVOkfsbKckoQ5TMn2JRnG8x2P4u6UztiJCRc2rw0pXHxI6jpAtcR
         U4yomMvXGMiStC3uRz0v5XiWpAmPJecmx+IhafH+WVx2VG+I1HUZ3JodG8NvSGftyRE1
         lZgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@tomli.me header.s=1490979754 header.b=bqJqabPM;
       spf=pass (google.com: domain of tomli@tomli.me designates 2a00:1a28:1157:199::5a76 as permitted sender) smtp.mailfrom=tomli@tomli.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=tomli.me
Return-Path: <tomli@tomli.me>
Received: from tomli.me (tomli.me. [2a00:1a28:1157:199::5a76])
        by gmr-mx.google.com with ESMTPS id i16si270636ede.0.2019.03.16.15.50.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 15:50:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of tomli@tomli.me designates 2a00:1a28:1157:199::5a76 as permitted sender) client-ip=2a00:1a28:1157:199::5a76;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@tomli.me header.s=1490979754 header.b=bqJqabPM;
       spf=pass (google.com: domain of tomli@tomli.me designates 2a00:1a28:1157:199::5a76 as permitted sender) smtp.mailfrom=tomli@tomli.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=tomli.me
Received: from tomli.me (localhost [127.0.0.1])
	by tomli.me (OpenSMTPD) with ESMTP id 837914cf;
	Sat, 16 Mar 2019 22:50:56 +0000 (UTC)
X-HELO: localhost.localdomain
Authentication-Results: tomli.me; auth=pass (login) smtp.auth=tomli
Received: from Unknown (HELO localhost.localdomain) (2402:f000:1:1501:200:5efe:6fc7:8b2c)
 by tomli.me (qpsmtpd/0.95) with ESMTPSA (DHE-RSA-CHACHA20-POLY1305 encrypted); Sat, 16 Mar 2019 22:50:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=tomli.me; h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; s=1490979754; bh=6NV48YIYlicxs90Ie/YWhNGzN2ItyVIxZVBVQmo6Sdk=; b=bqJqabPMAeetGZ8iqStaVzkBBWu6fDbY5430m4hkx1REBQK8RiNZGK+yK2DURvEXPf+qW9KTDlWYn4uAxnp/ZjaCC+ASdYbh8xIoJwLUI/lrptybQYwOoZHwApX0KGjsAMAO2sSFLkbve3He3s2l2PdDLzOqdpjMzUO0wHZxAjbMaOu8MJao28iR1legLlPmeS4oL55rykM+0nT3nfGd5CkDgkzayUXlnbXC7oqqxNDTSsmtPgYr8EAJ9daSQKUUZ04idg4/SOEizHmf2KarS4iauDmFR7ldBvyrOQotRFBB1IT+A71tlEZGzm6OmdqI4CwGthzQnmVDMX6BT0WsnQ==
Date: Sun, 17 Mar 2019 06:50:49 +0800
From: Tom Li <tomli@tomli.me>
To: Jules Irenge <jbi.octave@gmail.com>, linux-fbdev@vger.kernel.org
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm759fb: fix camelcase check issue
Message-ID: <20190316225048.GA27446@localhost.localdomain>
References: <20190316000109.22244-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190316000109.22244-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 16, 2019 at 12:01:09AM +0000, Jules Irenge wrote:
> Subject: staging: sm759fb: fix camelcase check issue

Thanks for submitting the patch. I'm not a maintainer, but there's a
typo in the mail subject.

This driver is called "sm750fb", not "sm759fb". A misspelled name would
make it difficult for other developers to grep the git log. I suggest you
to correct this typo and resend the patch.

If you are using git, to accomplish this, you could run

    $ git rebase -i [ID OF YOUR COMMIT]~1   # "~1" means one commit before

You would see something like,

    pick xxxxxx: staging: sm759fb: fix camelcase check issue

Change "pick" to "reword", save and exit the editor, and you would be able
to edit your commit message. After fixing it, run

    $ git send-email -v2  #  and so on

To send a new version of the patch, don't forget to include the original
receivers.

If you are not using git, simply fix the mail subject, the new subject should
be:

    [PATCH v2] staging: sm759fb: fix camelcase check issue.

and send it to the original receivers.

The above is a typically convention used by kernel developers when submitting
a patch. I hope it helps.

Cheers,
Tom Li

> Lower case of parameters to fix camelcase warning
>  Issue reported by checkpatch.pl tool
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 4c1f00f551da..6bdf643707c2 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -15,14 +15,14 @@ enum logical_chip_type sm750_get_chip_type(void)
>  	return chip;
>  }
>  
> -void sm750_set_chip_type(unsigned short devId, u8 revId)
> +void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
>  {
> -	if (devId == 0x718) {
> +	if (dev_id == 0x718) {
>  		chip = SM718;
> -	} else if (devId == 0x750) {
> +	} else if (dev_id == 0x750) {
>  		chip = SM750;
>  		/* SM750 and SM750LE are different in their revision ID only. */
> -		if (revId == SM750LE_REVISION_ID) {
> +		if (rev_id == SM750LE_REVISION_ID) {
>  			chip = SM750LE;
>  			pr_info("found sm750le\n");
>  		}

