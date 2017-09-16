X-GM-THRID: 6466416490649223168
X-Received: by 10.223.138.151 with SMTP id y23mr1776838wry.21.1505582376656;
        Sat, 16 Sep 2017 10:19:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.21.66 with SMTP id 63ls827731wmv.12.gmail; Sat, 16 Sep 2017
 10:19:35 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCVL2D/RmSr4TbGgV6Buzi2i3IoAqcHg9roP8Ad/PgN6+6cw50/lu3YAtxZSiRsemGEiyOa
X-Received: by 10.28.156.86 with SMTP id f83mr608464wme.5.1505582375542;
        Sat, 16 Sep 2017 10:19:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505582375; cv=none;
        d=google.com; s=arc-20160816;
        b=0I7l0EeJVIrc0H6XB5Kn3xGRpRQTbKwRezGKRcM4+ahM3PHio1xkOBGh8Pt0wTFqPY
         tlpSDaTPwDf0VNCJ3d+RJ1ml+V8OX7st6KlRsa2XAlOKhC6zncH4Qkt4F8R8gMuN8Lvt
         3cC0zouuzrFBY8TxtgroPbY6pEgfo+YK5rFW03oe+ZxBg1OKL/gHLP+6+bk5kepZ8EAm
         KYKqM8EMcQRDvnLg8HVn22n0Hz0aF60bvktiPlr0fnKN647CF2rhtIfrq3y+nEl371rk
         KMflg4OZ+HXowewow58TBWI46Wchq2rRAOjQAFM5FRWomixxTP1hEIPPRtOzwdMuiLeQ
         8sQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=mt5eko61XIVXIvGY7HyUusLl88kZ08WM4uzvPjdWuSk=;
        b=FR2tbYWeRMewooG6Fe7P7xpPz1RjzHzP/x+8zGsvVwu6tF4/HFyERg2XQIncQAwDN6
         I1dUhDs6jpHxw1Eslyis/IWX8Aqsm5SHJZLuTZRzUDpBDs7OPnglBSAld2iq4N4nTuR8
         YyDTagxpLyaP+/jgYMoAfqHZimU7s8VYCLdoz6obxXhSdyjsa78opKqqF5LYc19flcY3
         ySU/zZrQEm9LuWVQW+kvOjskbIwUludwBsYVe5IPyR5wKW8H6vzEbRcvPVzjpcnUBB90
         wa9fboaDyiuNJnv59inVO0WwATF0EA/cr3ANs4JcI1tRs+0M8bvz25bjsIfx6z5qn5Vn
         6OIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si214722wmi.2.2017.09.16.10.19.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 10:19:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,403,1500933600"; 
   d="scan'208";a="291393272"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 19:19:34 +0200
Date: Sat, 16 Sep 2017 19:19:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: dgnc: Remove unused
 fields in struct dgnc_board
In-Reply-To: <dd9a08aabab9cfc60a5c7c7c0d5191d72e68c2d2.1505579408.git.srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709161919170.1992@hadrien>
References: <cover.1505579408.git.srishtishar@gmail.com> <dd9a08aabab9cfc60a5c7c7c0d5191d72e68c2d2.1505579408.git.srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Srishti Sharma wrote:

> Remove unused fields and comments associated with them in
> the structure definition.
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
>  - Use the word field instead of variable.
>
>  drivers/staging/dgnc/dgnc_driver.h | 9 ---------
>  1 file changed, 9 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index 764d6fe..5d2566e 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -104,7 +104,6 @@ struct board_ops {
>   * struct dgnc_board - Per board information.
>   * @boardnum: Board number (0 - 32).
>   *
> - * @type: Type of board.
>   * @name: Product name.
>   * @pdev: Pointer to the pci_dev structure.
>   * @bd_flags: Board flags.
> @@ -140,13 +139,9 @@ struct board_ops {
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
> @@ -200,10 +195,6 @@ struct dgnc_board {
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/dd9a08aabab9cfc60a5c7c7c0d5191d72e68c2d2.1505579408.git.srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

