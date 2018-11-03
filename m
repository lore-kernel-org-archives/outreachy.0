X-GM-THRID: 6619591798140436480
X-Received: by 2002:a67:c78b:: with SMTP id t11mr14274956vsk.0.1541260703591;
        Sat, 03 Nov 2018 08:58:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:9748:: with SMTP id z69ls421114vkd.2.gmail; Sat, 03 Nov
 2018 08:58:22 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fUMFH+DpvRy9eQw4+1nCVJgRx8E7PTS1TYwvxxOczCvScNNxNKpo4Cd5UcKuo5E3i1YcMn
X-Received: by 2002:a1f:ae4d:: with SMTP id x74-v6mr14278539vke.8.1541260702794;
        Sat, 03 Nov 2018 08:58:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541260702; cv=none;
        d=google.com; s=arc-20160816;
        b=Fs/LVNatDNmA2Gzju5OkXjSnAHgHp/c68IxZoPKy1wH7WfJQnX6R2n1Rt0M5AOH0cT
         uI5D1yMm8LyMkrJZoQix6qXDiGsWlk+fW+QjlIXxs0Hb6s3oJWpXU/LqbTlu98eOvCvI
         zwjXM4zRkQX0ZneBLlKtdSMRib6TFaF73aloEoRQhpvq4QgCe0QFhnF43BeTkyy6NwBu
         qdmJfwflNj9N4FpkFCgNroo3yA27pxudu0ZkrPjnZ6gy+fnCVTjBSs2Xsoi/CWXyfWLx
         w8oJo3mOcrOZhkl0ZZ3TT0FTwtfRgomHfuCgjxsUMjnZ9ofWf0ORpWUVSURdTLAAepA1
         E/cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MQyc0/Ou1aOb75G2A3/G1RxEX+MawzVUaPkC2TLh5v8=;
        b=yjaFsllHoFsrR2Z1+7qS/xKpvpAW5CRNx/BRFYB5fbl+L3PwZ5zuMAuUH2p7ZazmIY
         khwk1QfcMHPYXxNrb5EtaNS1CwGUxxLG4JCDDPSra9i4FcHBo3J7eKaEST2cv8cPthVx
         gvbkS39I+8vz61HzIbGzp/ZaN6pfYjfr7EA8iiUMuYJdwivi9L3hYp2ppneBzv8OB7hU
         xTW5QWM0rUA6beKcllHY3DqvSOyFxSWaPWydLjk44qMaKJpprIA4Qs1kVVjmN9tnICfe
         8B94fteOFfJLmjTLmowlXaSHsaKlCoG8O/4fd0HKhSgOMljoKk6tcrebq+HMM9oDwRqO
         DZtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B9oMgTfk;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 187si21877vkc.1.2018.11.03.08.58.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 08:58:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B9oMgTfk;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id k1-v6so2300512pgq.1
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 08:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MQyc0/Ou1aOb75G2A3/G1RxEX+MawzVUaPkC2TLh5v8=;
        b=B9oMgTfkxQGdEVyBXLbQgSM0mEvYk+B+j0Syywjzxas4V+7u3g4zW3Jt5cFfufNbOK
         a2TbzS2PQh0n95seFSZNJ9EfwSq5ayb5S8ib8UtBrNCf1zPW6at5LoIDsX20qRaWy99N
         318ZcFf6xebrZTuQNEU+8x1syiOQVFybz0xxwIs7HYYE+keadIzK982EvI8Dr9F2Hnvx
         IvPs9su91tM57vexLAKXxDwXY0h7F3ZvqFGCe2KBcjBQtx0O4FETWq/jSO+E+yGjHti6
         rqCyfsITgy1WrsxQ742vJM4Xmi/GQ7G/KBejAoGrOsika3bDpS7P+D+yXgiGyjtdgXZa
         8uBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MQyc0/Ou1aOb75G2A3/G1RxEX+MawzVUaPkC2TLh5v8=;
        b=kKW4WBRRT9hj4LQ+MKbjTHkJbEPY3/KJ3ZbIYEJDX3JX20b8PKSi9RhCxUScn+ghHX
         c+2cucEmXcxOaVwfp5vSXzP61YGpnpn/j8DpjaLgTtFp/M94fzQbf5L2za7X9FcrL6rS
         jHGjq3jK3jfZuL/jVV2hVvIQqp/noO+XFZuNUzfLgriNW1N3kr0clz1zmB2KSklvVxti
         y3HbaUcKmMvZhJzgnEhda7K8u6YMad/SQNpXlnrstNQxxWtx6uCzvkUcD/vYCORnzdM4
         PikfXFMfk7ytXnH1E0xvhvFU28ih6cVJyzOfftj4H6eI+YwlD1mz2eHhgILMXhgV8P53
         jqPg==
X-Gm-Message-State: AGRZ1gKi+/aZouP/fYj5Uu5CwKQcD3Jv9XljQeXWWIwlDlCwtpPM4tde
	bgULmq7srt3dVx/l6W6AD3U=
X-Received: by 2002:a65:664e:: with SMTP id z14-v6mr14069066pgv.347.1541260701652;
        Sat, 03 Nov 2018 08:58:21 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id l1-v6sm39074895pgm.8.2018.11.03.08.58.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 03 Nov 2018 08:58:21 -0700 (PDT)
Date: Sat, 3 Nov 2018 21:28:14 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
Cc: linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr, outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: Re: [Outreachy kernel] [PATCH] staging:media:Add
 SPDX-License-Identifier
Message-ID: <20181103155814.GA9411@himanshu-Vostro-3559>
References: <20181103111648.30662-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181103111648.30662-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Nov 03, 2018 at 11:16:48AM +0000, Irenge Jules Bashizi wrote:
> Add SPDX-License-Identifier to fix missing license tag checkpatch warning
> 
> Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> index 7cc115c9ebe6..6d2570a63529 100644
> --- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> +++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> @@ -10,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA

Read Documentation/process/license-rules.rst and try to understand why
SPDX was introduced ?

Hint: search for "boilerplate" in license-rules.rst

Or search for previosuly accepted patches on SPDX ...


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

