X-GM-THRID: 6661416853760376832
X-Received: by 2002:ab0:1a5:: with SMTP id 34mr11315542ual.15.1551177873808;
        Tue, 26 Feb 2019 02:44:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls983440vke.0.gmail; Tue, 26 Feb
 2019 02:44:33 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbmLfEext8GrcWmEtdhpECJB+5JvTn77lstWPMpA5+KyMbmawgPUV8UX1cYJYpEZH3PFwvr
X-Received: by 2002:a1f:9b4e:: with SMTP id d75mr11522828vke.10.1551177873228;
        Tue, 26 Feb 2019 02:44:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551177873; cv=none;
        d=google.com; s=arc-20160816;
        b=mPOJ5soIQSQvi0nPCtdcY+M6iW2KB9xu01bhRcfdcVpFBGobwwIAJxnr9hEkUp6XtW
         L4kaDw3ip0tB/Sz2E7c3KV9J1ERgaFOxDAJk7excnFZ3+Eo7F1ke2QDsGY6axxC5bWHp
         Ibb7fXsp1lf+7Ahwo+tMEjC+VwCFaKG46dKL97QXmb07poDLSiBFkIbCkbEDUUn3iZok
         O40ela4WSb27/fFD78eSHdjO0pTVpWXcO4sMzyCs7iU32tOkibr4b5L3MKiL39S2P4Xa
         8SpBHQxdDYg0ssBG0bIRlqgQNfOoLcc5swLEWwQvOwvzTSUeIRUe4BlbqvjzwxBM3/YZ
         4XwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LC09y2LxjAKx7EvMs+LdYNn0r4dfhWuBfu2ZVTwZQ7A=;
        b=Fqsj9NPNYCJB3t4isoVKUU7M1oqapDE8bh6LDa5GTAwUv7u6BgQOSZijRX6XBwpgrK
         vBHtMhnLPnbK+LNGZAnhy9tfv5NlUz6GGOZsAoiXF+EyIPclqroyyZ0RMyh5Yq2i2iqa
         v6Z2mwYWGJxd2XGJnHF0c8h05ovoRBUntZrh8Mq5+HYnUZPP78slzqfFvku9zurHmUC9
         rcrpXvFTxYtzmH1RZtF4Rcd2EIuU42kEkuSb+XsTPlM5UkvEmRB0yhOCC8+4frxGdn4Y
         Pr0Bd/xFmf6vKcUB0RMNFhOlkZQDqb9M5nAATZNVobIZS2/cgtE5azrogWgJ9S5WOMSD
         YOBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YmsdevuW;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si223434vsp.2.2019.02.26.02.44.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 02:44:33 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YmsdevuW;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7C2F02173C;
	Tue, 26 Feb 2019 10:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551177872;
	bh=XziEJ2gao8MEBB1AitW9wUo6SbkX+WsN3jDXwHSZigE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YmsdevuWEThVbMf3XTQ/ersNpmkwxUP0o6GtOPwWCu5MdgXg8pnX34zwb2NgUGFrY
	 a+NCdH/NqxBZkMGnT/P/++c2N1Q4CQAo/iSIFWyhGhhuLIvkKVZiNEX6zXpk+sM0y6
	 uvRV4wkoVuZ6YDnqD+8y3a9Kn3rvuFSOw3GZPD54=
Date: Tue, 26 Feb 2019 11:44:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: Fix check - Lines should not end with a
 '('
Message-ID: <20190226104429.GA20834@kroah.com>
References: <20190225180235.14346-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190225180235.14346-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Feb 25, 2019 at 12:02:35PM -0600, Madhumitha Prabakaran wrote:
> Improve readibility
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/card.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 5dedc7aad384..6042f0bcd3f8 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -62,12 +62,11 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
>  
>  static
>  void
> -s_vCalculateOFDMRParameter(
> -	unsigned char byRate,
> -	u8 bb_type,
> -	unsigned char *pbyTxRate,
> -	unsigned char *pbyRsvTime
> -);
> +s_vCalculateOFDMRParameter
> +	(unsigned char byRate,
> +	 u8 bb_type,
> +	 unsigned char *pbyTxRate,
> +	 unsigned char *pbyRsvTime);

There's so much wrong with these few lines to start with, you can make
this look a lot better all at once.

How about this change instead:

static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
				       unsigned char *pbyTxRate,
				       unsigned char *pbyRsvTime);

Isn't that much more readable over the initial, and even your change?

thanks,

greg k-h

