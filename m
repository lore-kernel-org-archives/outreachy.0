X-GM-THRID: 6807884729429262336
X-Received: by 2002:a67:eecb:: with SMTP id o11mr8201846vsp.227.1585572981069;
        Mon, 30 Mar 2020 05:56:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:6184:: with SMTP id v126ls1074754vkb.0.gmail; Mon, 30
 Mar 2020 05:56:19 -0700 (PDT)
X-Google-Smtp-Source: APiQypK0TYKJIZxVE5JcvQ9sJtXxMMIn4OxiVxp3w6zFEskAeYrS4AydA3qqmwZoytXwdLa1sxBt
X-Received: by 2002:a1f:3fc8:: with SMTP id m191mr7635094vka.71.1585572979900;
        Mon, 30 Mar 2020 05:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585572979; cv=none;
        d=google.com; s=arc-20160816;
        b=m1S3vEG3InYhPjtmZTLjVccfCZVSo8A3XXc9dET96wWhlUeBv022Blgldsx/KlFP96
         LPzetcQEnAmKF9+A4lIh+FIfr/tZrVBRJ3jUwB4dzYrGUw2kKKkGEZTULcbvxsG+8nr3
         iM4c3whWClyU3GPhMIvf98qFAbcWDS2ZKtwyfHRjIR5DfsICXZrPDSJk0wsSx+5palNR
         R7n58XiwdqioYeqfkVBGjp5hbcETW3RUCMjVhmog/8L3187fvGEp7WfEWWy9wWBOlNke
         lww/4+NPSrinQoofRdnPuW061HH68sbLlhfO7LC+iJIcPCpW1hRFr3c6LtwSLIgIoE1x
         h8yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=xjdOi1EpWmqAHrHETEgEr8Rt/8r2gNEDG6b1WyGheSk=;
        b=ZlPwNhtpRMtPA9c7Ytd+Yhhlk3WyUj/m8wxEIDn3FqLMcXClg1geJcwO7A4gmyshSB
         c/1goo67lW6gtn9ScB5q4xgUeOVKjltXg9Mp+DbmxnErEy57GDwXvvUcD+c1PVuEUoyU
         PVZd/AHJRoS1a17faPuerNgXnh7VkUPCiENjnD6PiUdoHz/veZfpkeuPuSiL2MO7TuV3
         4E9Zqmdt5aMumC4+JMtN8pz5P689IXD86NK1I4mAONUk39OHtK+kaGLmTWhaYPPAA0fS
         YJKiqYZuH/CPMIIf7nSVACpf3t0lLzzRMT3TS1XSIdIOz00IRufkEIP2Ppf0Yc/0Wd0y
         jETw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="b6sR/8xa";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id u6si266625uae.0.2020.03.30.05.56.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 05:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="b6sR/8xa";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585572979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xjdOi1EpWmqAHrHETEgEr8Rt/8r2gNEDG6b1WyGheSk=;
	b=b6sR/8xa0U97L2aI6BdjZBdNVqjhP700qC0iQcYnpk6EfBa7vR3Vw1ryPUrjhfJRWrpIAG
	rVO3whoIcPy6P8IDNkpuGG957uLaWWVGYFcHPkhZ0KUyFA9NVs26WQvWJS7FJeUTt/PcBw
	PgZrdpTbljeiwOon5xM8MQ5qkf0/ivM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-243-hr9BaE-FPiKGDphb4C47bQ-1; Mon, 30 Mar 2020 08:56:15 -0400
X-MC-Unique: hr9BaE-FPiKGDphb4C47bQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88CC2107ACCD;
	Mon, 30 Mar 2020 12:56:12 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C05D19756;
	Mon, 30 Mar 2020 12:56:10 +0000 (UTC)
Date: Mon, 30 Mar 2020 14:56:05 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] Staging: kpc2000: kpc_dma:
 Use sizeof(*var) in kzalloc().
Message-ID: <20200330145605.285d8877@elisabeth>
In-Reply-To: <1e4819bb3fc9377f19755625518b0cafabaed509.camel@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	<bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585143581.git.jane.pnx9@gmail.com>
	<20200330030433.4b924c5e@elisabeth>
	<1e4819bb3fc9377f19755625518b0cafabaed509.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 06:45:00 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> On Mon, 2020-03-30 at 03:04 +0200, Stefano Brivio wrote:
> > On Wed, 25 Mar 2020 10:26:37 -0400
> > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> >   
> > > kzalloc(sizeof(*var), ...) was the format been used
> > > across the driver, which is the preferred format,
> > > but missed two instances, correct them to match the
> > > coding standards.
> > > 
> > > Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
> > > over kzalloc(sizeof(struct var)...)
> > > 
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
> > > Changes in v2:
> > > - Update the log message to be more descriptive.  
> > 
> > It would be nicer to refer here to the person who suggested the change,
> > if it's not you directly noticing the problem (you can just mention
> > them by name, name and surname, or explicitly say "suggested by ...",
> > "requested by ...", etc). There are many recent examples on this list.
> >   
> Ohh, Sorry for that, i thought this tag is more of a code related
> change. since being new to the process, most of the time log messages
> and subject lines will be commented on to follow the conventions. which
> i thought is a different case than changes in the patch itself.

Wait, I wasn't talking about tags here:

- use a Suggested-by: tag if the patch itself was suggested by somebody
  (which is not the case for this patch)

- v2 was prompted by comments you received for v1 by Julia, so it would
  be appropriate to state, in the history of log changes:
	- Update the log message to be more descriptive (suggested by
	  Julia Lawall)

-- 
Stefano


