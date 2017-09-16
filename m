X-GM-THRID: 6466340392828665856
X-Received: by 10.46.83.13 with SMTP id h13mr2274417ljb.40.1505562630452;
        Sat, 16 Sep 2017 04:50:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.68.205 with SMTP id b74ls587981ljf.26.gmail; Sat, 16 Sep
 2017 04:50:29 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBK8ETkJKkFqIeKiAURjoPphI77/27M1Ez61bpWw3ja0ifnnCoCwyRcfqjyeQuXdRABtzCk
X-Received: by 10.25.219.206 with SMTP id t75mr398061lfi.7.1505562629063;
        Sat, 16 Sep 2017 04:50:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505562629; cv=none;
        d=google.com; s=arc-20160816;
        b=dLCzi4ZtBnnQ36EDyJzVIFiF3M8W2ieKLVB0cxYPt4SXd3PBR9qr2YyJujOf5QJuv3
         Y0fOQOM24ZiiYdTLtfJhVomAHCHRfeCYWghvv5toMeqG3eU0R/S1GDUheiHYAXOTrGM2
         lgcA1V7KmPuIi0G4w5VPjmuP8LqgPD+CFja87ulJG0Zn09SNow8RoMuPdj95jWmQPqyx
         ZssTw+kOK9r9lUAD83q20fvGlhbsboerB4sStJQxNmYOsNhIdTeBF8pKDJpJvDWVnVYw
         FvhF6QovUDTW+9lh/gh3SWcqLXubhfz4YLsADkiu/pET+02fvOCMPRtCZS8Vtpj9fEuf
         rXWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=N/njT7vgDdZfmKEWJ4eEk/iiOIA+J9FIQWpM/YWTpdY=;
        b=zYS/X4JI5wpFAqD9k4w8eJwqoYLeVbwRPHK5KefBovRuj67C90d5j/D145sBlYWN9v
         +UupgfBzdaclo5i+Eiilp8r3Mdook8QwByntPy6Zlq+KMH7oP5CmQPq0n7QL1G/8Ydeo
         v3TTIbbybnhLbbSEx6UyGixmh7CoePOfhkXQvnzeB818DW91+VkcAHMGZIZzmHXjj24e
         HWSHV5ovl3rZc02m5ji+ids1kBZdNaVXwumiCOv6OvINh88UhXuQxoQHO6H1kMHU/fjt
         JTRSbxUIa3Y3URp0H+iQr31R7h2GqlcUM1zi3Yj/FgZAClYI5suwx5JGw/7v7cBta77B
         XOfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si163633wmi.2.2017.09.16.04.50.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:50:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="291377340"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 13:50:28 +0200
Date: Sat, 16 Sep 2017 13:50:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Remove unused variables
 from structure definition
In-Reply-To: <1505562186-11813-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709161349030.2943@hadrien>
References: <1505562186-11813-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Srishti Sharma wrote:

> Some variables in the structure were unused and hence them and
> the comments associated with them can be removed.

How did you find these?  The last two can easily be checked with grep, but
that is ont the case for type.

Actually there are two structures in the file with useless
proc_entry_pointer fields.  The other one has a useless
dgnc_channel_table.  It could be reasonable to make a series to do both
structures.

julia

>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_driver.h | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index 764d6fe..2b625cc 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -103,8 +103,6 @@ struct board_ops {
>  /**
>   * struct dgnc_board - Per board information.
>   * @boardnum: Board number (0 - 32).
> - *
> - * @type: Type of board.
>   * @name: Product name.
>   * @pdev: Pointer to the pci_dev structure.
>   * @bd_flags: Board flags.
> @@ -140,13 +138,9 @@ struct board_ops {
>   * @dpastatus: Board status as defined by DPA.
>   * @bd_dividend: Board/UART's specific dividend.
>   * @bd_ops: Pointer to board operations structure.
> - * @proc_entry_pointer: Proc/<board> entry
> - * @dgnc_board_table: Proc/<board> entry
>   */
>  struct dgnc_board {
>  	int		boardnum;
> -
> -	int		type;
>  	char		*name;
>  	struct pci_dev	*pdev;
>  	unsigned long	bd_flags;
> @@ -200,10 +194,6 @@ struct dgnc_board {
>  	uint		bd_dividend;
>
>  	struct board_ops *bd_ops;
> -
> -	struct proc_dir_entry *proc_entry_pointer;
> -	struct dgnc_proc_entry *dgnc_board_table;
> -
>  };
>
>  /* Unit flag definitions for un_flags. */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505562186-11813-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

