X-GM-THRID: 6256393273902891008
X-Received: by 10.31.168.130 with SMTP id r124mr22311142vke.10.1456944533665;
        Wed, 02 Mar 2016 10:48:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.171 with SMTP id 40ls3653398qgh.42.gmail; Wed, 02 Mar
 2016 10:48:53 -0800 (PST)
X-Received: by 10.31.15.11 with SMTP id 11mr22324887vkp.3.1456944533054;
        Wed, 02 Mar 2016 10:48:53 -0800 (PST)
Return-Path: <bounce-md_30481620.56d73594.v1-c672e9d3f6584ff99f270739ca14da9a@mandrillapp.com>
Received: from mail177-1.suw61.mandrillapp.com (mail177-1.suw61.mandrillapp.com. [198.2.177.1])
        by gmr-mx.google.com with ESMTPS id g136si2149109ywb.5.2016.03.02.10.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:48:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d73594.v1-c672e9d3f6584ff99f270739ca14da9a@mandrillapp.com designates 198.2.177.1 as permitted sender) client-ip=198.2.177.1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d73594.v1-c672e9d3f6584ff99f270739ca14da9a@mandrillapp.com designates 198.2.177.1 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d73594.v1-c672e9d3f6584ff99f270739ca14da9a@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=UeCdtXPNnbxpOMxTyPco8YDnfNo=;
 b=gkrLaSpPBBCHgel5S11GtZ05E8SGGMAHEIDHB1F7Kpb/cNCFq5LxonsJzLrhqd5nPMZolGSPuogo
   ndvAkgLYiZtAPfbaZEKl8osN9Jq03sNkAe6NGBHx8LQF0Tn7uAxp594S3yb/ktkY/AxU6OBvs/x8
   /JkLX6EMAJ9aTaPP3uQ=
Received: from pmta06.mandrill.prod.suw01.rsglab.com (127.0.0.1) by mail177-1.suw61.mandrillapp.com id hqsqpa22rtkc for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:48:52 +0000 (envelope-from <bounce-md_30481620.56d73594.v1-c672e9d3f6584ff99f270739ca14da9a@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944532; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=RMfI+UUu57CjJuzfkANAeVpXlUXr/YII9jwKGL7lvGI=; 
 b=CJTJ7MEchGQmD3lOgTaBaatjwTlgobAbSGYfeVK83AFb9A9oeOjutRCUnDXxZqKCHMiNti
 0sM90gip/KLO53z71cbHknTn23pU0YpiOe3/of9WZTozbc3ef5BXXHwlQHoYTh7JfzkYFKn5
 xWRNJQpcSUSCwH9Wgh7rChHd45X1g=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: ptlrpc: Use list_for_each_entry_safe()
Return-Path: <bounce-md_30481620.56d73594.v1-c672e9d3f6584ff99f270739ca14da9a@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id c672e9d3f6584ff99f270739ca14da9a; Wed, 02 Mar 2016 18:48:52 +0000
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302032455.GA29512@kroah.com>
References: <20160228222021.GA8699@janani-Inspiron-3521>
In-Reply-To: <20160228222021.GA8699@janani-Inspiron-3521>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.c672e9d3f6584ff99f270739ca14da9a
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:48:52 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 28, 2016 at 05:20:21PM -0500, Janani Ravichandran wrote:
> Use list_for_each_entry_safe() instead of a combination of
> list_for_each_safe() and list_entry(). Also remove variable pos
> which becomes useless as a result.
> Semantic patch used:
> 
> @a@
> expression pos, n, head;
> expression mem;
> type t;
> identifier var;
> iterator name list_for_each_entry_safe, list_for_each_safe;
> @@
> 
> - list_for_each_safe(pos, n, head)
> + list_for_each_entry_safe(var, n, head, mem)
>   {
>    ... when != var
> -  var = \(list_entry \| container_of\)(pos, t, mem);
>    ... when != pos
>   }
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/ptlrpcd.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Does not apply to the tree properly :(

