X-GM-THRID: 6802879895263248384
X-Received: by 2002:a17:902:7049:: with SMTP id h9mr1488408plt.0.1583928500633;
        Wed, 11 Mar 2020 05:08:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:4c8b:: with SMTP id my11ls987061pjb.0.gmail; Wed, 11
 Mar 2020 05:08:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vspL4snIOHeVFI70qj/4PeJY/3hXUDfQ6w9HjjIALMdFHyjbH+YSepoPXbaRoWOu+4YkHEo
X-Received: by 2002:a17:902:9a09:: with SMTP id v9mr2673128plp.341.1583928499109;
        Wed, 11 Mar 2020 05:08:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583928499; cv=none;
        d=google.com; s=arc-20160816;
        b=vzRjOPhH7ti8vFozwxO9t6FbyPDG9vSIt6Ffcm1kHErQhx8OUflEY8aC79MmupYELh
         ACldJ+2YVyvUqGsmYny1VtUgjSToeKW7ex2s4LuZXfaTIEZJd5LBboKLJWA7kLYeWQSx
         +fxudWaw+isvgB4bQHXTZ/bXAWsYpkcyaIAluJEZG0N15QLkbVYOVQyVMws3MD7FiUsI
         2crxF5uiZ44DV9fC0FCkWZOoYm8xIBA1m0hVJEoqKpYtn7lJLzk/x4GPgzpQHTYlTOLc
         4ZwQ3hRrlCF2L6PRCPPPjeew0b/rxFG3cfXtpE0B+X1RNxJphgbdu2jWEfhhWmVFrl59
         Vsmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=LTlsrW/E1ZSwY/gloGEV4Fuu+L2yEcjZrBqGDvh09fA=;
        b=z8cMJcnfrAEtBZgiaFGFdoChLz20LSQBEPuGjCDNCmWSHK01F+EyG6gQnXTLYvYb6z
         GKTBWE8D5mvXTHMd3ERl2YgiKOCqA4TioiQ8HSVRXE3j0TNFPKIiD5EXESiYZKO6w33b
         ligSPRK/K6rvbHHZhaOyCoVLNFb1I6eiWtqAl6HuKuPn856uNC1zvd2wCbnnWYQBm1aY
         6ANXlpJu9d7c2Pqcw732o8Uud9nc7/0fXPmNsICdqMKnTTb0eknMI55g5OpyJ5mZ82R4
         OJFnJz6Gmxn2q5lDvT2IKHKqJjSAJxy+J64OqxD51p2NQLrXQXz9bx/jLXnMgGEbveLu
         JPFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZAPZCeKG;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id h10si125663pju.1.2020.03.11.05.08.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 05:08:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZAPZCeKG;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583928498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LTlsrW/E1ZSwY/gloGEV4Fuu+L2yEcjZrBqGDvh09fA=;
	b=ZAPZCeKGWYiAO03Og3jChZA1s0xBjvUKlL3XWiBBSZLMUnhAPNTopEcjOh4E9fqCTkmZBE
	m/zStQd/wW16A6eloJbW26AW3I1po+jOQi/vwp7JZcY98Yo2Oc3ksb93CIOzacw8Jeuo93
	ujAheCDV1Snvq+16Rgwlzd7YgZabsUI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-6RftJsJhPUukEYOYyr7nNw-1; Wed, 11 Mar 2020 08:08:16 -0400
X-MC-Unique: 6RftJsJhPUukEYOYyr7nNw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C4961007275;
	Wed, 11 Mar 2020 12:08:15 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C0DF5C1D4;
	Wed, 11 Mar 2020 12:08:13 +0000 (UTC)
Date: Wed, 11 Mar 2020 13:08:07 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
Message-ID: <20200311130807.02e32fc8@elisabeth>
In-Reply-To: <cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
	<cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 11 Mar 2020 14:58:15 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Remove unneeded temporary local variable, cleanup suggested by coccinelle.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/qlge/qlge_ethtool.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
> index 592ca7edfc44..e15f9723b5c0 100644
> --- a/drivers/staging/qlge/qlge_ethtool.c
> +++ b/drivers/staging/qlge/qlge_ethtool.c
> @@ -692,7 +692,6 @@ static int ql_set_pauseparam(struct net_device *netdev,
>  			     struct ethtool_pauseparam *pause)
>  {
>  	struct ql_adapter *qdev = netdev_priv(netdev);
> -	int status = 0;
>  
>  	if ((pause->rx_pause) && (pause->tx_pause))
>  		qdev->link_config |= CFG_PAUSE_STD;
> @@ -700,9 +699,7 @@ static int ql_set_pauseparam(struct net_device *netdev,
>  		qdev->link_config &= ~CFG_PAUSE_STD;
>  	else
>  		return -EINVAL;
> -
> -	status = ql_mb_set_port_cfg(qdev);
> -	return status;
> +	return ql_mb_set_port_cfg(qdev);

Here, you're also removing a newline that is typically inserted before
a second return (or the last one in a function) for readability, or
whenever there are two logically distinct branches, same in 3/4.

And in 1/4, you might want to add one. In 2/4, there's no need.

-- 
Stefano


