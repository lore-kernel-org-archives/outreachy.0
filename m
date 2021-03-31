X-GM-THRID: 6945912104921595904
X-Received: by 2002:aa7:c346:: with SMTP id j6mr5918998edr.386.1617221575052;
        Wed, 31 Mar 2021 13:12:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:97c6:: with SMTP id js6ls1932315ejc.2.gmail; Wed, 31
 Mar 2021 13:12:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw9JxFhsCKs+bbqHY98zDDYPfgWZ/LlAgF524StezNFZ9wI799Na0tlAf48CR4OqC+Ccobc
X-Received: by 2002:a17:906:aac6:: with SMTP id kt6mr5551525ejb.260.1617221573352;
        Wed, 31 Mar 2021 13:12:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617221573; cv=none;
        d=google.com; s=arc-20160816;
        b=yvjlj8mOpJnruvsVkXqyOyykDNHVmzl7EtoTkpx+flLYceqL5kTje1NYiR7xaxusYK
         ruYiTOkZrbfYmQyL6yiyZreitlseYuLlU+yP4WVY8PKMNOR81+G5wXsuzGNgqA4JU5rU
         bPu6cjayidQKbiwY2x7yVnnrpPoXQvplcvX17cqbwRKB6tH51ETPta6xfYhoxYpXN9c0
         EpqQi2mEwPF6S+fcEsxheXsdwK4uBAUUnKTqNrgAejwbrwGr+O4bPdldBbVzqTBqZ0bo
         B9aGRY5wScg5nH9os7P8An7o6VkaGh7NJUqpeDYZXe2zfTYr+4HxKyoxUDbPP5KlX2gc
         /0rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Gbmoarp9g77RXiHnodXV2QqJ4Sk6XuuKzhMyWWtTTcU=;
        b=wMeLSHm9EM0NwwSx+xj/tlcMBrfkkFiZL39NrnXCJuGIG9il5/OSB5rM13nwItBjEL
         bj0e0YL3B5NpU90rqaYZWaHGjRZvqm+LDVq1VLO9oNisupSd8vcuCzK/I0mG5we8kyU5
         bYhaqaOLLRugcdVrBvKKwXv0qc4evMn3ZWhjxIat3IR6dpzYzrXKyQwo2Iru+HccJDn+
         1pxuRui0O1Oi/dNB7EQfPfC4/PguCshecGuO57rE9ojPY8CvA02AWYHWa7gAB2V+Q3Bu
         HymM26+38tgD9rkve2+PVVlh5VDagFmDliozaYBGzzIQZ1HeA0qxZWpqRoSReNNlnpjA
         jVWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f25si363386edx.4.2021.03.31.13.12.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:12:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.81,293,1610406000"; 
   d="scan'208";a="500981815"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2021 22:12:52 +0200
Date: Wed, 31 Mar 2021 22:12:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deborah Brouwer <deborahbrouwer3563@gmail.com>
cc: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com, marcocesati@gmail.com, 
    fabioaiuto83@gmail.com, dan.carpenter@oracle.com, phil@philpotter.co.uk, 
    amarjargal16@gmail.com, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8723bs: core: remove
 empty comment
In-Reply-To: <f6be2f84ff5b29a51ca6be0d269c50d54568b2e2.1617221075.git.deborahbrouwer3563@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2103312212200.3008@hadrien>
References: <cover.1617221075.git.deborahbrouwer3563@gmail.com> <f6be2f84ff5b29a51ca6be0d269c50d54568b2e2.1617221075.git.deborahbrouwer3563@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Mar 2021, Deborah Brouwer wrote:

> Remove empty comment instead of fixing the checkpatch warning that it was
> generating.

Maybe it woudl be better to focus on the purpose of what you are doing.
Something like:

Remove empty comment, which provides no information.

julia

>
> Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 428c71ce0334..7b4c0f22cd90 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -876,8 +876,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
>  					*(payload+curfragnum), *(payload+curfragnum+1), *(payload+curfragnum+2), *(payload+curfragnum+3),
>  					*(payload+curfragnum+4), *(payload+curfragnum+5), *(payload+curfragnum+6), *(payload+curfragnum+7)));
>  			}
> -/*
> -*/
>  	}
>  	return _SUCCESS;
>  }
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f6be2f84ff5b29a51ca6be0d269c50d54568b2e2.1617221075.git.deborahbrouwer3563%40gmail.com.
>

