X-GM-THRID: 6804062901536555008
X-Received: by 2002:aca:474e:: with SMTP id u75mr3104102oia.52.1584447407091;
        Tue, 17 Mar 2020 05:16:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c441:: with SMTP id u62ls2423692oif.9.gmail; Tue, 17 Mar
 2020 05:16:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtthb6MwjyeVHDbH5xsYsUT2539KvqUd7G8DPAepSNxSeicPXPxEmC75GPVjqIpsPkOW2Ai
X-Received: by 2002:aca:4154:: with SMTP id o81mr3242570oia.125.1584447405750;
        Tue, 17 Mar 2020 05:16:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447405; cv=none;
        d=google.com; s=arc-20160816;
        b=mOVn18v0uKWT6wuUmZlv+NgtIfRAfUaGH+OT5Iz4hf1h3AGWdb+oMqbg1htzZ3MzZn
         ZpH9LF0vkEZhQsJwl0VC/+eSXjVkZfHQE4/Q8mO4c8n0gvdUWF+NUKVcIFoRc7BZK7Er
         iIOM+7MENFjUsXT9vh/k5MFZRoXLISPCUqVFgCWkGt1t3R1j/ozqJWjAXtMeqppOXkwJ
         BPOmKvDSkWROgRerxYlN0fp/62h4lGry9xs6aHFTe3UWJ4dj/m+KQgnFC43A9rguPtA4
         MitOareaaMWv57b+aNLqNmX6KOYPnKu3npo0d4SsQwUTIpalnUpQ7kKD6U+QQVkINIaQ
         hDPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=/9KA2rSdoSlQNXR7GSeivvYEYwO7BXSB0M7nJIPM5w0=;
        b=ZXZ7qKbQSyPVqToYRqmeQtECAL6dMfF39kwBdS4qBr/MlCUb01h3tZI/HA9mViNOF6
         k28BJoSDGPCLQFY5h21VCCrRCVDIED5NSo9EuCTJQhZ634grSYfd8nCIpBWO/IK65jaZ
         YsGTPagXOCfHlWeWXzWZL5YM06/9121DR/s1jR+Q1lOAvYdr5OuwYz0h3dXYLhMhVI6R
         0tWDqJP+f7hyp3wKtrA2ctOpjurnnrIcwDrQpnZkdT5x4Ogx7PvWgmlPIgg8GSaVFUH8
         zA3KM4UD1jz78wS16d7XGe1blBuokou920fwFiES7ql971QflTPeZVN96wMJSwjtTgkl
         o5pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SmkpvMIY;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id w2si247004otl.3.2020.03.17.05.16.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 05:16:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SmkpvMIY;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584447405;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/9KA2rSdoSlQNXR7GSeivvYEYwO7BXSB0M7nJIPM5w0=;
	b=SmkpvMIY7bdUCoziM20WVf29GttS/BPN5oIzhH3Fmb2WoHNzmmFtfXiQsMB8sWh74ElMIB
	hgKkQY4hzfQdYUT0ODRu968mY1LP5yrp8uhGkpnN9aqGn7rRr3wWLBgReZb3JHrECWeSs+
	TOzpHwGfagrj6Ypc6sZBCyUtYyaI8mg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-432-XLvxm7HLNT-GTK2ijddH4w-1; Tue, 17 Mar 2020 08:16:41 -0400
X-MC-Unique: XLvxm7HLNT-GTK2ijddH4w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00F46DBA3;
	Tue, 17 Mar 2020 12:16:40 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F94760BF3;
	Tue, 17 Mar 2020 12:16:36 +0000 (UTC)
Date: Tue, 17 Mar 2020 13:16:30 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
 abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: dt3000: Reformat
 multiple line dereference
Message-ID: <20200317131630.21053bbb@elisabeth>
In-Reply-To: <20200314135852.GA6336@deeUbuntu>
References: <20200314135852.GA6336@deeUbuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 14 Mar 2020 19:28:57 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Reformat multiple line dereferences for &cmd->scan_begin_arg. Problem
> detected by checkpatch.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/comedi/drivers/dt3000.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt3000.c b/drivers/staging/comedi/drivers/dt3000.c
> index f7c365b70106..011e19161b78 100644
> --- a/drivers/staging/comedi/drivers/dt3000.c
> +++ b/drivers/staging/comedi/drivers/dt3000.c
> @@ -439,9 +439,8 @@ static int dt3k_ai_cmdtest(struct comedi_device *dev,
>  
>  		if (cmd->scan_begin_src == TRIG_TIMER) {
>  			arg = cmd->convert_arg * cmd->scan_end_arg;
> -			err |= comedi_check_trigger_arg_min(&cmd->
> -							    scan_begin_arg,
> -							    arg);
> +			err |= comedi_check_trigger_arg_min(
> +				&cmd->scan_begin_arg, arg);

Isn't this introducing an equivalent issue to the one you're fixing in:
	[PATCH] staging: comedi: s626: Reformat function arguments
?

That is, I think this should be more indented than that.

-- 
Stefano


