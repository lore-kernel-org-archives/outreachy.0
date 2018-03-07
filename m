X-GM-THRID: 6530150669896122368
X-Received: by 10.237.40.7 with SMTP id r7mr15888089qtd.38.1520419674618;
        Wed, 07 Mar 2018 02:47:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.11.131 with SMTP id 125ls845415qkl.10.gmail; Wed, 07 Mar
 2018 02:47:53 -0800 (PST)
X-Google-Smtp-Source: AG47ELu4nchmlxF4PswPDhaGzwSi2LiCdDQXGzdw5UAopyjINDsB7UcuZOPsLeBBpqU8TQmEme7o
X-Received: by 10.55.161.88 with SMTP id k85mr3499563qke.61.1520419673862;
        Wed, 07 Mar 2018 02:47:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520419673; cv=none;
        d=google.com; s=arc-20160816;
        b=o7JpdlidHLSM+OcjRA0G6Okc0HbAGRwkcgh2hLlDWeBP4RKHzeiR2M5oanws3c5bAt
         iUAklfIa2tevAFRxjjM0xqSnw82GxvCSb92F6jpp+N0B8jLCSTLgypdIkz/Sgs7Ppwfh
         4oPVd/elJxERvaWGfjFAXW8V6nZd7G+G7GlS9p3C1oNUhRrSDQRPP/m3sIhp1LDdHkPr
         sO7PbM+65pK9y08bztFA4rIQ2HIt1UURWX9KHxLYfew4IPkFgNUJJN7B7sR3xH1JH77t
         BAp0OtkPFKTQJeQN8wz5kk3o4eiANp3cEeMZquJLb0ZDa95vko0dRjWe5dyK15dZA0EZ
         yAaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=w2OJ48OUZD1uAOwcrF4nJnO2llDvZMOd1j7NzV2rLqE=;
        b=f8hnnivRokzo71aqiouAMCHeHiqvQd5tA4xqFZBDDmKxXn3n5c3offE+yQTPwR7v60
         DE6W38d3VwSh2uQMUC5yYIHLUtMs73kSUtLHFLE6A0A1XyQqh1z0CwE3ignx+X1keyi5
         Ogvnun2wd0+ZW/50Eka596+ReovHkANCqwOiThp6Uj3MOHbu4+ide3Un0Yw87tV4LTCq
         5jIIXHRRhYWKrq1k5Evwchw+LuEFtc1QIvmBhSQpSeaWfSVKDpwVGYXcRC3W6czgbrC0
         tvXYZMSjpqRhCtt7Vko3nGIBnEMFPEk5K2UI57olfAw9Pq5TTxgMkbIzntUN5D5jq/VI
         K72w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2017-10-26 header.b=T9dN2XK7;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id a9si152633qkg.1.2018.03.07.02.47.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 02:47:53 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2017-10-26 header.b=T9dN2XK7;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.22/8.16.0.22) with SMTP id w27AlYUc014773;
	Wed, 7 Mar 2018 10:47:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2017-10-26;
 bh=w2OJ48OUZD1uAOwcrF4nJnO2llDvZMOd1j7NzV2rLqE=;
 b=T9dN2XK7v+ri3aIoh8IRhwKGsnCl35bvcOWSPnhGb2817zNUnrH1bLQJYtLswhbDkTbT
 A4Q+XO4ehm5mcLQkQwK5HIluGRyXU0nMVD0K7t9BnY13PGFBLJJUBNlo57hceQfHGtVX
 3fIYJGT7M4wCB0pSfhFoAKa7xrn8tRJ9qKaIl8nCpbKLpw7EF8uI6KNe3TPFgwDa9Rbo
 fohC0Xa2bsmyE2orYvcTuAJPXjQwh75bbt9cUeVhqPu7lcjaN+Zd+F/DeVFTNNZd7Zu0
 7spZkOrqoFUpSqEBpPdhCX2mnkO0r7tn5Zo5067aZBCBmjkL6/u7EQR51JeKt8j4FNJu Xw== 
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by aserp2130.oracle.com with ESMTP id 2gjeawg541-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 07 Mar 2018 10:47:50 +0000
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserv0021.oracle.com (8.14.4/8.14.4) with ESMTP id w27AlnfI014078
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 7 Mar 2018 10:47:50 GMT
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id w27Alnin006229;
	Wed, 7 Mar 2018 10:47:49 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 07 Mar 2018 02:47:48 -0800
Date: Wed, 7 Mar 2018 13:47:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] staging: rtl8192u: Replace printk() with more
 standardize output format.
Message-ID: <20180307104741.mdy2wa7hplfwxmb3@mwanda>
References: <20180307103908.GA19612@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180307103908.GA19612@seema-Inspiron-15-3567>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8824 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=947
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1711220000 definitions=main-1803070125

On Wed, Mar 07, 2018 at 04:09:09PM +0530, Arushi Singhal wrote:
> @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
>  	keyidx = pos[3];
>  	if (!(keyidx & (1 << 5))) {
>  		if (net_ratelimit()) {
> -			printk(KERN_DEBUG "CCMP: received packet without ExtIV flag from %pM\n",
> -				hdr->addr2);
> +			netdev_dbg(skb->dev, "CCMP: received packet without ExtIV flag from %pM\n",
> +				   hdr->addr2);
>  		}

I'm sorry.  I really hate to do this to you...  But the right thing here
is to use net_dbg_ratelimited() but get rid of the if (net_ratelimit())
check.  So it looks like this:

	if (!(keyidx & (1 << 5))) {
		net_dbg_ratelimited(skb->dev,
				    "CCMP: received packet without ExtIV flag from %pM\n",
				    hdr->addr2);
	}

Sorry again, when I looked at it before I just replied what my fast
thinking lizard brain said instead of taking time to look at what I was
saying.


regards,
dan carpenter


