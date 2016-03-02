X-GM-THRID: 6256035827033309184
X-Received: by 10.13.219.80 with SMTP id d77mr22672629ywe.39.1456944542023;
        Wed, 02 Mar 2016 10:49:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.103.240 with SMTP id y103ls3865734qge.59.gmail; Wed, 02
 Mar 2016 10:49:01 -0800 (PST)
X-Received: by 10.140.242.214 with SMTP id n205mr22594793qhc.14.1456944541377;
        Wed, 02 Mar 2016 10:49:01 -0800 (PST)
Return-Path: <bounce-md_30481620.56d7359c.v1-e758264f12764125ab73801330e93f66@mandrillapp.com>
Received: from mail177-1.suw61.mandrillapp.com (mail177-1.suw61.mandrillapp.com. [198.2.177.1])
        by gmr-mx.google.com with ESMTPS id v197si2401810ywa.1.2016.03.02.10.49.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:49:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d7359c.v1-e758264f12764125ab73801330e93f66@mandrillapp.com designates 198.2.177.1 as permitted sender) client-ip=198.2.177.1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d7359c.v1-e758264f12764125ab73801330e93f66@mandrillapp.com designates 198.2.177.1 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d7359c.v1-e758264f12764125ab73801330e93f66@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=UeX82DjE86hyFIl1sHbO9k7wl48=;
 b=UEDVoyUb2kqX85TnjxfSugPzC85N7L9ly5F4B2X2+5AIBqW9BwCoWRo6BfZlM2vTPYfJKGKOb8oE
   Or7bR+VW7jmViQLv3pcCGqs8J2nJnV1DB6JZzvg9xjT6dPpjEwl1nEqzR75+Jdkcfk57c0tnn2e9
   lorEjPct6iIO24YM/F0=
Received: from pmta06.mandrill.prod.suw01.rsglab.com (127.0.0.1) by mail177-1.suw61.mandrillapp.com id hqsqpq22rtks for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:49:01 +0000 (envelope-from <bounce-md_30481620.56d7359c.v1-e758264f12764125ab73801330e93f66@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944540; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=TD9VELhxRv0VkGKvKd/dysD145pzwSySka1feijCi6w=; 
 b=efQNVwCpacDvHlSQIlaxdy4+WUtXqW78JX9Tmkq7QsXTluulPXEG1zh+v6mFq4FtOV64jx
 3OVIHh9V41VY3ARSBrvMn53IwjgjbiURcSnes9tYnfBaSI4MvraKMiiZNdq4PzOoo1xtLHkO
 DfDQTYsOPoyTiEh+dFmW3pA6TWnhA=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: lnet: Replace typedef with struct
Return-Path: <bounce-md_30481620.56d7359c.v1-e758264f12764125ab73801330e93f66@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id e758264f12764125ab73801330e93f66; Wed, 02 Mar 2016 18:49:00 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302032747.GA7744@kroah.com>
References: <20160227181118.GA28603@Karyakshetra>
In-Reply-To: <20160227181118.GA28603@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.e758264f12764125ab73801330e93f66
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:49:00 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sat, Feb 27, 2016 at 11:41:18PM +0530, Bhaktipriya Shridhar wrote:
> As per the Linux kernel coding style guidelines, using typedef for a structure
> type is not recommended. Hence, occurences of typedefs have been
> removed.
> 
> This was done with Coccinelle.
> 
> @r1@
> type T;
> @@
> 
> typedef struct { ... } T;
> 
> @script:python c1@
> T2;
> T << r1.T;
> @@
> coccinelle.T2 = T;
> 
> @@
> type r1.T;
> identifier c1.T2;
> @@
> -typedef
>  struct
>  + T2
>  { ... }
>  -T
>  ;
>  @@ type r1.T;
>  identifier c1.T2;
>  @@
>  -T
>  + struct T2
> 
> The '_t' suffix has not been removed since there is a variable with the
> same name.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Fixed typo "lusture" to "lustre" in the subject
> 
>  drivers/staging/lustre/lnet/selftest/ping_test.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/selftest/ping_test.c b/drivers/staging/lustre/lnet/selftest/ping_test.c
> index 9d27e39..617a641 100644
> --- a/drivers/staging/lustre/lnet/selftest/ping_test.c
> +++ b/drivers/staging/lustre/lnet/selftest/ping_test.c
> @@ -48,12 +48,12 @@ static int ping_srv_workitems = SFW_TEST_WI_MAX;
>  module_param(ping_srv_workitems, int, 0644);
>  MODULE_PARM_DESC(ping_srv_workitems, "# PING server workitems");
> 
> -typedef struct {
> +struct lst_ping_data_t {

Don't put "_t" at the end of a typedef :(

