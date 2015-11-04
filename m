X-GM-THRID: 6210359704363728896
X-Received: by 10.28.211.201 with SMTP id k192mr4055225wmg.3.1446596049004;
        Tue, 03 Nov 2015 16:14:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.222 with SMTP id 91ls82583lfq.12.gmail; Tue, 03 Nov 2015
 16:14:08 -0800 (PST)
X-Received: by 10.112.184.170 with SMTP id ev10mr6223161lbc.4.1446596048397;
        Tue, 03 Nov 2015 16:14:08 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id l1si728045wmb.1.2015.11.03.16.14.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 16:14:08 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MbtTu-1aCwiv1jq2-00JH2j; Wed, 04 Nov
 2015 01:14:07 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH 2/5] fs: nfsd: Replace time_t with u32 in nfsd4_lease
Date: Wed, 04 Nov 2015 01:14:06 +0100
Message-ID: <8412799.SPuinIILNH@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <d860ec8de84b6ac84510505a1fef14c8ccc60a67.1445960986.git.ksenija.stanojevic@gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com> <d860ec8de84b6ac84510505a1fef14c8ccc60a67.1445960986.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:UuWFp/o+Q8ehin8KYYjF8tE96+vX7o0eoTRcrytF2W8uklasVKa
 zPdq8Bd7l4ADL6jpK9wk5AfBMDiRuh6WpriMYRjiW2zCrxjgmZhWuZr+TPuwCsEeOq2WEej
 l544Wr8bVFGMYGTzWJa0HwxYJTlrPaHxg7jgMyMR0pOMaySCuns88S77ZCTCWYLX1wHvwEo
 jDlk5e1LZA7Pj4cCVC3hw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:fo1r9QfGbSg=:7yEcGpkbLaK8mXCM40GZeH
 uf6/l1P/aMUTiKEKS0hriL5U4gOjwIev/gihjRgR53lVxp7LCguho9edAH98nIhBF7+gIipLC
 goUJz0sPQxUpDhjnJY548b9KPf2g6N+FIMBYytNYb2l7R6b62qEy0hgSFLluZeDMsZZCG+9KT
 o7rYjCZRUvr/sznVYw86yp53JiyE/YQ6182Eso8RTqU8uDHV5arvcH4zUAzWc08FQYKx7nyJS
 mOHzzTm73HzhkLG9zukEKpOMfMxRL7XjBzuD/YqeFYCqNRWm+D6p6/92rPzijCgrdzZOSPWsS
 f8Do5K944bP6v31xQPHJKSsz15YqfQwULORBOcz7JD9/1dYBelcj772x3SItL44Nq274i1NOH
 k6Y7FXniCYF1ox/V/2q2czFSbj49q1bAVXpKiXyYQQG8kTw8nDGXYDAtKj+ckWT47f2amginv
 reEFtIgeRD8no7YX1i9XMxkqUeYlkXEPXYl1EVV5j97aMAXZevO0Y2MxV9bIgETsN2lT8WXNe
 VIkGgoZTLTspzV64ss1+oGyG613uLn0InRRYkq+YKRnFOJQFI3UAyutojd+TkxNEPW8INWnIz
 l51uj+fxdXkYbPG0+lzSSUMaUj8GoF6v3bedPtAKY6PkMqyo+heiLkKx6Ko1bCoBk4ivEUD7C
 DhBlb3GXflTVj3oVAwubuthXPlhzCRPgMRlqg0WrttgSpeHw7k7/9kby3m55ReZtSPsn5FfJH
 W0v7qv073a6nFm7t

On Tuesday 27 October 2015 09:09:35 Ksenija Stanojevic wrote:
> Replace time_t type and get_seconds function which are not y2038 safe on
> 32-bit systems. Function ktime_get_seconds use monotonic instead of real
> time and therefore will not cause overflow.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

You are missing an explanation about why the u32 type is used. The
change to that type looks absolutely appropriate here, but it seems
unrelated to what you write above.

> diff --git a/fs/nfsd/netns.h b/fs/nfsd/netns.h
> index d5cce15..85b114f 100644
> --- a/fs/nfsd/netns.h
> +++ b/fs/nfsd/netns.h
> @@ -94,7 +94,7 @@ struct nfsd_net {
>  	bool in_grace;
>  	struct nfsd4_client_tracking_ops *client_tracking_ops;
>  
> -	time_t nfsd4_lease;
> +	u32 nfsd4_lease;
>  	time_t nfsd4_grace;
>  
>  	bool nfsd_net_up;
> diff --git a/fs/nfsd/nfs4callback.c b/fs/nfsd/nfs4callback.c
> index e7f50c4..8a177c6 100644
> --- a/fs/nfsd/nfs4callback.c
> +++ b/fs/nfsd/nfs4callback.c
> @@ -681,7 +681,7 @@ static const struct rpc_program cb_program = {
>  static int max_cb_time(struct net *net)
>  {
>  	struct nfsd_net *nn = net_generic(net, nfsd_net_id);
> -	return max(nn->nfsd4_lease/10, (time_t)1) * HZ;
> +	return max(nn->nfsd4_lease/10, (u32)1) * HZ;
>  }

coding style: it would be helpful to convert this to use max_t()
instead of max() to avoid the cast.

>  static struct rpc_cred *callback_cred;
> diff --git a/fs/nfsd/nfs4state.c b/fs/nfsd/nfs4state.c
> index 8245236..4bceb878 100644
> --- a/fs/nfsd/nfs4state.c
> +++ b/fs/nfsd/nfs4state.c
> @@ -4332,8 +4332,8 @@ nfs4_laundromat(struct nfsd_net *nn)
>  	struct nfs4_delegation *dp;
>  	struct nfs4_ol_stateid *stp;
>  	struct list_head *pos, *next, reaplist;
> -	time_t cutoff = get_seconds() - nn->nfsd4_lease;
> -	time_t t, new_timeo = nn->nfsd4_lease;
> +	u32 cutoff = ktime_get_seconds() - nn->nfsd4_lease;
> +	u32 t, new_timeo = nn->nfsd4_lease;
>  
>  	dprintk("NFSD: laundromat service - starting\n");
>  	nfsd4_end_grace(nn);

The change to "cutoff" needs to be done together with the 'cl_time'
change from patch 1, and all the users of that variable.

> @@ -4399,7 +4399,7 @@ nfs4_laundromat(struct nfsd_net *nn)
>  	}
>  	spin_unlock(&nn->client_lock);
>  
> -	new_timeo = max_t(time_t, new_timeo, NFSD_LAUNDROMAT_MINTIMEOUT);
> +	new_timeo = max_t(u32, new_timeo, NFSD_LAUNDROMAT_MINTIMEOUT);
>  	return new_timeo;
>  }
>  
> diff --git a/fs/nfsd/nfsctl.c b/fs/nfsd/nfsctl.c
> index 9690cb4..6e0cfd6 100644
> --- a/fs/nfsd/nfsctl.c
> +++ b/fs/nfsd/nfsctl.c
> @@ -932,7 +932,7 @@ static ssize_t write_maxconn(struct file *file, char *buf, size_t size)
>  
>  #ifdef CONFIG_NFSD_V4
>  static ssize_t __nfsd4_write_time(struct file *file, char *buf, size_t size,
> -				  time_t *time, struct nfsd_net *nn)
> +				  u32 *time, struct nfsd_net *nn)
>  {
>  	char *mesg = buf;
>  	int rv, i;
> @@ -964,7 +964,7 @@ static ssize_t __nfsd4_write_time(struct file *file, char *buf, size_t size,
>  }
>  
>  static ssize_t nfsd4_write_time(struct file *file, char *buf, size_t size,
> -				time_t *time, struct nfsd_net *nn)
> +				u32 *time, struct nfsd_net *nn)
>  {
>  	ssize_t rv;

This function is called for both nfsd4_lease and nfsd4_grace, so by changing
only one of the two types, you generate a compiler warning.

	Arnd

