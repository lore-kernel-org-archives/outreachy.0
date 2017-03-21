X-GM-THRID: 6399941946737950720
X-Received: by 10.99.167.73 with SMTP id w9mr18769434pgo.102.1490112986283;
        Tue, 21 Mar 2017 09:16:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.71 with SMTP id b68ls4540796ioj.22.gmail; Tue, 21 Mar
 2017 09:16:25 -0700 (PDT)
X-Received: by 10.99.119.200 with SMTP id s191mr11747955pgc.97.1490112985655;
        Tue, 21 Mar 2017 09:16:25 -0700 (PDT)
Received: by 10.55.103.195 with SMTP id b186msqkc;
        Tue, 21 Mar 2017 08:50:03 -0700 (PDT)
X-Received: by 10.46.88.9 with SMTP id m9mr5061906ljb.25.1490111402698;
        Tue, 21 Mar 2017 08:50:02 -0700 (PDT)
Return-Path: <sergei.shtylyov@cogentembedded.com>
Received: from mail-lf0-x230.google.com (mail-lf0-x230.google.com. [2a00:1450:4010:c07::230])
        by gmr-mx.google.com with ESMTPS id x188si839697wmx.0.2017.03.21.08.50.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 08:50:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4010:c07::230 as permitted sender) client-ip=2a00:1450:4010:c07::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4010:c07::230 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Received: by mail-lf0-x230.google.com with SMTP id j90so68868414lfk.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 08:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:cc:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=6FkWH8jKdXhcoGljPPHLSra20LYoP5VcecrUOjBOb1U=;
        b=vha+hKxPz7IT/88pBT5fIAvHRTXPF/8UM1tRjrNc4yfUFOiGc8Owih4ZPt4fAhfuXe
         cQn066v5kz2CN7WvyYQHWk+7htZogDrejkmsGQh4Oy24q1HMtw/IHtXjk1p0lKoCGIsZ
         hcxybhy/1urBftuvAfaXhXJNwJcB+/CfBmvTN4QbEfMQg4UKCCaoNbqQAsg31vZwu+sT
         OTjRR/HFjVrLbdUd1R4EE7ZV7ssQcHh2rmNwZep9WmARz/kZn8/f5PP9oN43jrjUEgTm
         wXizIo8wzP16E2lctaxswp+WzyBpcFyxnLbUctwqD2vYHzTgOhkpioSE4h9KYBdqhdlD
         1kkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding;
        bh=6FkWH8jKdXhcoGljPPHLSra20LYoP5VcecrUOjBOb1U=;
        b=oHmFI4/I9Rv/GZ7dWU7Gy0c6Y6o3+iqqPGm/uS6Fr+2oIJQ0yrqgY83kQfi4tqxf6+
         KpbROO5wa5qogtk6+RTD/DuuVW6yPz2r8tOQXeotu+8A9m8hVcaUS3Pmo+g83IAXgxXG
         dJ2W+3nzs27BkZWp8AGq+7OT6TgZWwgPYdjhITN9K2OQGq1fARxO8KyK7UaY1+XmOjMw
         Fi2T2upzeTWT5MmqPnmHtUh2a+4XR3cF+qYOAgtzf2trLepDDYuUnbSpTWPdX5o1l8OO
         rmokdMncvHZzxqmRTXa15aj8M8pmSSLdAtQpAhoZRBqvnSnmfzSxQcXzeN6wikKYx7u/
         Q64g==
X-Gm-Message-State: AFeK/H2HO/Ji9uSeRcy6ecyThN5rEKCnMGEWPqA4z+pNteUJYwR32+U8UQhETLTZATe7CA==
X-Received: by 10.46.5.148 with SMTP id 142mr12173212ljf.46.1490111402116;
        Tue, 21 Mar 2017 08:50:02 -0700 (PDT)
Return-Path: <sergei.shtylyov@cogentembedded.com>
Received: from wasted.cogentembedded.com ([31.173.83.95])
        by smtp.gmail.com with ESMTPSA id l2sm3662757lfe.69.2017.03.21.08.50.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 08:50:01 -0700 (PDT)
Subject: Re: [PATCH 2/2] netfilter: ipvs: Compress return logic
To: simran singhal <singhalsimran0@gmail.com>, pablo@netfilter.org
References: <1490102599-27579-1-git-send-email-singhalsimran0@gmail.com>
 <1490102599-27579-3-git-send-email-singhalsimran0@gmail.com>
Cc: kadlec@blackhole.kfki.hu, davem@davemloft.net,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
 wensong@linux-vs.org, horms@verge.net.au, ja@ssi.bg
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <144902e5-76d4-f767-7b86-ba07d57cf5a7@cogentembedded.com>
Date: Tue, 21 Mar 2017 18:49:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490102599-27579-3-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello!

On 03/21/2017 04:23 PM, simran singhal wrote:

> Simplify function returns by merging assignment and return into
> one command line.

    You mean "one statement"?

> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>
>  --This is my contribution to the netfilter project of
>    Outreachy Round 14.
>
>  net/netfilter/ipvs/ip_vs_ftp.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/net/netfilter/ipvs/ip_vs_ftp.c b/net/netfilter/ipvs/ip_vs_ftp.c
> index d30c327..c93c937 100644
> --- a/net/netfilter/ipvs/ip_vs_ftp.c
> +++ b/net/netfilter/ipvs/ip_vs_ftp.c
> @@ -482,11 +482,8 @@ static struct pernet_operations ip_vs_ftp_ops = {
>
>  static int __init ip_vs_ftp_init(void)
>  {
> -	int rv;
> -
> -	rv = register_pernet_subsys(&ip_vs_ftp_ops);
>  	/* rcu_barrier() is called by netns on error */
> -	return rv;
> +	return register_pernet_subsys(&ip_vs_ftp_ops);
>  }
>
>  /*

MBR, Sergei


