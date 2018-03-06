X-GM-THRID: 6529221119652659200
X-Received: by 10.237.45.39 with SMTP id h36mr12815260qtd.25.1520330020225;
        Tue, 06 Mar 2018 01:53:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.11.2 with SMTP id e2ls9252556qti.12.gmail; Tue, 06 Mar
 2018 01:53:38 -0800 (PST)
X-Google-Smtp-Source: AG47ELsi3oHWnKD/JRTkjsX0MDOh+2u+r2Zi7/203kaH2gZmmeFvSLyK9kAwaZdXtRad6OKjzguN
X-Received: by 10.200.39.230 with SMTP id x35mr13679436qtx.49.1520330018828;
        Tue, 06 Mar 2018 01:53:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520330018; cv=none;
        d=google.com; s=arc-20160816;
        b=gpKirvaRmx0M81ngt9v+GKmRAbk3oQP3NwCqxum1TwDvBK741OeHuY5AflSXh5ujGN
         XnYLyZxwI4IyARzVoMFXkLbRxwnytQDG+6048Vn6snzRyPaUNMghHAXcEbEh8XdHMsqE
         AU8MOlzhc6JDZF2ZfeGKtf83JoKBbDutqakSuQc94iDXG6JAHNHAWJzhVt4Eq3NZlK7B
         IerzimRNYJsvi5gfWDxd/6iTP0v1YRBwN+aSdPMNEsqu1ibFOty/9Pru42+NolxfYDBS
         TvLkDebNru6nCNm5uuBOB7Gn+Mh2Bai3X/RObHw1Bkd1q0LiKDxkM5cNcTxcaxj2wB3H
         ti8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=1GMirRPl60RqL7cpmLEH0guxJdTHykB7FdSAudoKWvU=;
        b=FBQZCn18fFxtVQwpkXXcDNyWuQFSJjDCfRVe1/VUNnZUysvvE2dSZMeip/36pmPRnK
         MBAYKW3mIatLi284Pf2ad9UIA6Oscv77ikeGfBc9je42MmJlRkPHLkQzZIVguN48WbOo
         5pE+y+Sn6nQBLUnDMFu5caGcg0no2BzQl4+5azSHutu0Bs1JG6SA3U5rxg4UiJCs5yUH
         XLc6gDd8+nxiuxMKXpUNcSlnK+Kkw5d4jbtoEg9KKMe/t8AXdKkUrhuOLGtrZw14DsVS
         u/aHD1oWMQ/lWjbvwfzpHnn5O7tS8HkS7A2nGcQJCekHjW6QZqn8W+cxkaoHQLMo0e1e
         oPFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2017-10-26 header.b=lH9qA9sF;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id o5si1017928qke.2.2018.03.06.01.53.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 01:53:38 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2017-10-26 header.b=lH9qA9sF;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.22/8.16.0.22) with SMTP id w269pplV100843;
	Tue, 6 Mar 2018 09:53:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2017-10-26;
 bh=1GMirRPl60RqL7cpmLEH0guxJdTHykB7FdSAudoKWvU=;
 b=lH9qA9sF4uwk9xN3CG25F0BcGL5W+H5kpm3ewyFwj/Nolc5T0W/df9G/vYbX6ue2c1Jy
 vXg142aagFRUcRR4h72c6fI670Urj1OULxX8en8JtYtdKx8ZAfKNh3Rl1XUX4gRUNrWT
 g1JmtiCLNHVjQihojEpEjXV5TtKl6WfCubzx3XUkgDBFRmwEma48VCUalSV+q3z8wdFu
 DI0rqlISYkvAmmdHqkYMZdkxhH4gUSlfF/3cODYXXZg1Q7cRi9URbGYqp/splTG7HvoQ
 LTXGC4AbGYFAqKdVTi9QgSnGPJDl8W8i+bKRQj02bLGT4uw+OcBiykEklDejfvRFipE2 JQ== 
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by aserp2130.oracle.com with ESMTP id 2ghr6r08wd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 06 Mar 2018 09:53:35 +0000
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id w269rYC3012413
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 6 Mar 2018 09:53:34 GMT
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id w269rY0Y013247;
	Tue, 6 Mar 2018 09:53:34 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 06 Mar 2018 01:53:33 -0800
Date: Tue, 6 Mar 2018 12:53:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
        driverdevel <devel@driverdev.osuosl.org>,
        outreachy-kernel@googlegroups.com, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] staging: irda: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180306095320.2v63xokda4wsirwg@mwanda>
References: <20180304223205.GA31416@seema-Inspiron-15-3567>
 <20180305100345.v6ajs7vdgzmwu5x4@mwanda>
 <CA+XqjF9tBqpgp7ymQOAWeJHm1hPd6w01u3ZVS8ozq4JuoBNSEg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+XqjF9tBqpgp7ymQOAWeJHm1hPd6w01u3ZVS8ozq4JuoBNSEg@mail.gmail.com>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8823 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1711220000 definitions=main-1803060114

On Mon, Mar 05, 2018 at 11:41:43PM +0530, Arushi Singhal wrote:
> On Mon, Mar 5, 2018 at 3:33 PM, Dan Carpenter <dan.carpenter@oracle.com>
> wrote:
> 
> > On Mon, Mar 05, 2018 at 04:02:06AM +0530, Arushi Singhal wrote:
> > > Replace printk having a log level with the appropriate
> > > net_*macro_ratelimited.
> > > It's better to use actual device name as a prefix in error messages.
> > > Indentation is also changed, to fix the  checkpatch issue if line is not
> > > exceding 80 characters.
> > >
> > > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > > ---
> > >  .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      | 22
> > +++++++++++-----------
> > >  1 file changed, 11 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> > b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> > > index e6648f7..200fe5f 100644
> > > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> > > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
> > > @@ -73,7 +73,7 @@ static void *ieee80211_ccmp_init(int key_idx)
> > >
> > >       priv->tfm = (void *)crypto_alloc_cipher("aes", 0,
> > CRYPTO_ALG_ASYNC);
> > >       if (IS_ERR(priv->tfm)) {
> > > -             printk(KERN_DEBUG "ieee80211_crypt_ccmp: could not
> > allocate crypto API aes\n");
> > > +             net_dbg_ratelimited("ieee80211_crypt_ccmp: could not
> > allocate crypto API aes\n");
> >
> >
> > This should probably just be deleted.
> >
> Hello Dan
> Why we should make this change?
> According to me it's use here to print debug message.
> Wanted to know more about your thought on this.

Actually, I looked at this wrong.  I though that crypto_alloc_cipher()
had its own error messages.  Sorry about that.

regards,
dan carpenter

