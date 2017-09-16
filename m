X-GM-THRID: 6466416490649223168
X-Received: by 10.28.156.86 with SMTP id f83mr608540wme.5.1505582399034;
        Sat, 16 Sep 2017 10:19:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.15.11 with SMTP id 11ls175725wmp.9.canary-gmail; Sat, 16
 Sep 2017 10:19:58 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD1dOapivng4Qybjo5WPpy4uixO3Da7C/imqRe4vyPUZpRYB87E2pjzLrgVR3ULkiQqh/48
X-Received: by 10.28.154.68 with SMTP id c65mr610849wme.5.1505582398221;
        Sat, 16 Sep 2017 10:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505582398; cv=none;
        d=google.com; s=arc-20160816;
        b=hLspSJaXxL9/wxZZAzkvwBtCDXQvx+B4+6qBnHv9ACUYZUz3jtD63dG2VdcgENLVOp
         Ko/DQrssMdBViOtV4918RFzwrR7t2C1Cn8Q5ZeT5IrTKLliIp1cZ4VgVGElmA+lNloCf
         SgJSuE5N2WrUoVFq2eC/W8I1DD6TrWP0vdTHtr2IqQ5M6Ix3gxVsfIIDzGprpOQsPlQW
         P3CWEGkATI5KUVg7S+JvufLxfaGIz6NKsh6ykoRI6Iw0vT5puHeolyLICMAZioMVEKY4
         7zhkH+oCnKL1vNexJQN5czQNNbIknOJxiHWK/zadNZyWg2BsvouOr5GxG/tGjYjwkKqF
         B/Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=FyN5+wjDWm+K3tI7BfTHrHJ2jVRiWJtPpsaid7dQdt0=;
        b=emybRjwtRBXWQl/8DQJvleBoF0RMDegr0VSRzYznXhIwAzyZA4xieGmX8Rsn6BRQyN
         Gd0Bc0Z/RJegd0ZaF3mpJ6c8qE5Ua1+Vd0gCAGUKY/TtISsRoIV5L3ruLVM0W91QBrOR
         Bjj8+ls6pCkXtYHFdjCX6f8BTc2D9KuUKaa4iefybpe/gDRBL3g00DfxeXJS+xistsH8
         KUhhKUNtUvVpsbN0jvsvPaIHZNLs3HrZ2gL/XqBLGI3r4dFhpUSm4IU4+dPCSqcCpfr6
         AMIm6vhmeQm21H0CkVS+4MoglvsfOVQzHm9FxER4wQuhjlCSjRDO23b5/sk/Kwv6Jfj9
         TXvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m74si212025wma.0.2017.09.16.10.19.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 10:19:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,403,1500933600"; 
   d="scan'208";a="237734307"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 19:19:57 +0200
Date: Sat, 16 Sep 2017 19:19:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: dgnc: Remove unused
 fields in struct channel_t
In-Reply-To: <a57f835fc443d51ae9eadd1b995435c215f14974.1505579409.git.srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709161919380.1992@hadrien>
References: <cover.1505579408.git.srishtishar@gmail.com> <a57f835fc443d51ae9eadd1b995435c215f14974.1505579409.git.srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Srishti Sharma wrote:

> Eliminate the fields that are not used and the comments
> associated with them.
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
>  - Use the word field instead of variable.
>
>  drivers/staging/dgnc/dgnc_driver.h | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index 5d2566e..082d659 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -312,8 +312,6 @@ struct un_t {
>   * @ch_err_overrun: Count of overruns on channel.
>   * @ch_xon_sends: Count of xons transmitted.
>   * @ch_xoff_sends: Count of xoffs transmitted.
> - * @proc_entry_pointer: Proc/<board>/<channel> entry.
> - * @dgnc_channel_table: Proc/<board>/<channel> entry.
>   */
>  struct channel_t {
>  	struct dgnc_board *ch_bd;
> @@ -382,10 +380,6 @@ struct channel_t {
>
>  	ulong		ch_xon_sends;
>  	ulong		ch_xoff_sends;
> -
> -	struct proc_dir_entry *proc_entry_pointer;
> -	struct dgnc_proc_entry *dgnc_channel_table;
> -
>  };
>
>  extern uint		dgnc_major;		/* Our driver/mgmt major */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a57f835fc443d51ae9eadd1b995435c215f14974.1505579409.git.srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

