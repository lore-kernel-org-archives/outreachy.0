Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652F920FF
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 07:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648538942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=V2R2I8peWErZ98sUgp0q5Kfkn6k2CTtNAwJOPevv6lY=;
	b=c1+cdpmQE9L9ZBXYRi+YWoAsbjNdCDrt/6N86zRFMbnEKthiyRybi/3JKqdi9o7YO2/w4N
	JPLdmGBmWAHBld1l39Hh+KOUBOdUPB5rXk4xJFbYy0k+qhx6/3g3C1l82zEdF7gVoKMFW9
	A/PuyG0j83BDamoOxGU2s8zOZ/r52vg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-644-IH4fPf-jMUyDaGtfUdDuyA-1; Tue, 29 Mar 2022 03:29:00 -0400
X-MC-Unique: IH4fPf-jMUyDaGtfUdDuyA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE40510059AB;
	Tue, 29 Mar 2022 07:28:59 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 43207604CC;
	Tue, 29 Mar 2022 07:28:59 +0000 (UTC)
Date: Tue, 29 Mar 2022 09:28:57 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Rebecca Mckeever <rebecca.mckeever@protonmail.com>
Cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: Help with Outreachy Setup
Message-ID: <20220329092857.5dba3c3f@elisabeth>
In-Reply-To: <tNBPktxWF2otxi8_ncSeM-0JgzTQmBXSgYhPAg1PevCPu-Lqr8pJDNRwMcq7onLpeAUF70r1P7JUlHeP-P7RxoR3aloWi-yuosT_E7k4xk8=@protonmail.com>
References: <VlGZ-Rt6GMrT_vsR1Bi_X3co5-hOiETSXBNNVG77hbb2vELgPzsd2fv5T4Qnd14G3z6f-ocpRTj2uT2ampl1aB6PyXJkWRS_5l8BH3nNcRM=@protonmail.com>
	<hIoORnc6IGx_3SqRrbAJGrJBMH4ZnHvpDMUrXAkvsbULD_5Ab9D-w_2na1gq1TlO7bX0JdMAx_CBriDDpoqStYKNXmqu4HZUugAX1HJ0ius=@protonmail.com>
	<20220327105438.26ec0e70@elisabeth>
	<tNBPktxWF2otxi8_ncSeM-0JgzTQmBXSgYhPAg1PevCPu-Lqr8pJDNRwMcq7onLpeAUF70r1P7JUlHeP-P7RxoR3aloWi-yuosT_E7k4xk8=@protonmail.com>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 28 Mar 2022 23:15:58 +0000
Rebecca Mckeever <rebecca.mckeever@protonmail.com> wrote:

> Hi Stefano,
> 
> ------- Original Message -------
> 
> On Sunday, March 27th, 2022 at 03:54, Stefano Brivio <sbrivio@redhat.com> wrote:
>
> [...]
>
> > To build the kernel with that option, you don't just need binutils, you
> > would also need binutils with this specific support, which is not
> > commonly available in distribution. I bet "elf32-86-64" is missing in
> > the list of supported "targets" when you issue:
> >
> > objcopy --help  
> 
> Yes, "elf32-86-64" was missing from the list of targets. But the list did include "elf32-x86-64". Do you know what the difference between them is?

That was just my typo :( So objcopy supports it. The other component
that needs to support that is ld (the dynamic linker), you could check:

	$ ld --help|grep elf32_x86_64

but I think it's very unlikely that objcopy has that and ld doesn't, so
there must be some other issue. If you're interested, you could try to
add some debugging to that Makefile, it's arch/x86/Makefile.

> > Anyway, yes, it's just a warning. You can get rid of the warning by
> > disabling the CONFIG_X86_X32 in your kernel configuration. Maybe you
> > could make sure you disabled it with the correct syntax with this, from
> > your kernel tree:
> >
> > scripts/config -d CONFIG_X86_X32
> >
> > ...it can still be that it's selected by another option, so it would be
> > re-enabled automatically. Search for it from 'make menuconfig', typing
> > '/' (slash) and searching for X86_X32. Then you will see if that's the
> > case.  
> 
> This worked for me. I was able to recompile without seeing the warning.

Okay, nice!

> > The actual build error you got on the other machine is probably a
> > dependency issue between options, which happens with your particular
> > configuration, but it really shouldn't happen no matter how your
> > configuration looks like.
> >
> > The relevant configuration options are CONFIG_CRYPTO_AES_NI_INTEL and
> > CONFIG_64BIT -- you could start having a look at the state of those two.
> 
> CONFIG_CRYPTO_AES_NI_INTEL was set to m. I tried changing it to n and
> then y, and neither removed the error. Changing CONFIG_64BIT didn't
> remove the error either. I think I may have made a mistake early in the
> process and would need to start over to get it working. I will stick
> with compiling on the other machine for now; I actually prefer it that
> way.

Good, let's try to debug that only if it comes up again.

> Thanks for you help Stefano!

You're welcome!

-- 
Stefano

