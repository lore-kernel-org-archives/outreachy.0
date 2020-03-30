X-GM-THRID: 6808187713389330432
X-Received: by 2002:a65:5a4f:: with SMTP id z15mr10778115pgs.103.1585530339517;
        Sun, 29 Mar 2020 18:05:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:245:: with SMTP id fz5ls13865677pjb.3.canary-gmail;
 Sun, 29 Mar 2020 18:05:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsqawH8q4PID4JCPOxX2N0xcnYAZ+ujlOV/T/oM111iFsHXmQgSebEWvv9YsafKjj2MM2o+
X-Received: by 2002:a17:90a:1b42:: with SMTP id q60mr13311781pjq.84.1585530338116;
        Sun, 29 Mar 2020 18:05:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530338; cv=none;
        d=google.com; s=arc-20160816;
        b=RHRdWr/O3wyDymIAiURbrVJuNi3LLW92qaRc1drYzZno7jLytwta8BkX21OUBEvpRt
         5Xrln8r9opAr6YQyq+QRyqJQtj3GM5qJngIOsEevTex1K9xPeoyE6ZTRh0yrP9zKDg8v
         lpXHgTXQPmQ6a3wBMJMT7XG3SSU8ALQ/cr7eKZv1EPRsfnVHHgGP8rbI+wyQ1TPeCzSl
         QoU3S47QaxUKJiUxgKXFtMTaVIxk67Go3BJzKbAxMOifO4VC7f0azG/i7syx/vZ0nlyN
         hy2HAH0DE5yoYj8B0D7eTqN3fC+B1Jnz2fY2HqrilVbK7PnVYGl8AzAZJizqi+cqPqdB
         NsCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=RuVMi+yzQuqrWt1PfGiMDTX9P2hZ817ws+8wqAp5qk0=;
        b=jQ8QC1GDabt4P8Amcf5ca8yaOvk1SlAV57XUi2qJyKKdHIrxvwXeVMGBV2M9g5HfUF
         GEaVmQVRShRVSOjzdEvfea45KkeMkVIGydrHe2x0FWvvutbPMt/OWQtMCRbPVI1u0JdB
         r9IYQ2ayLOr2Gl5eq2Z+rVPld/n07/aaMuIK4j9HLiRUbQfkGJn5OSZabqOgNFQ0vPEu
         5zy7tyIbK2Qoq7IWHL3AsPze8pOnfypPyvfKDPlLBaZbgZLmmtUokQ05RHkSNmD8zUo9
         yiMrg56QiZhRmrk4HgQ7psnZ+5DxdvvE8V45pAD/7iIDU+sS7WyU7lvAut/b+8Jwji4e
         imBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OFTc6ukA;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id y5si733068plr.4.2020.03.29.18.05.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:05:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OFTc6ukA;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530337;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RuVMi+yzQuqrWt1PfGiMDTX9P2hZ817ws+8wqAp5qk0=;
	b=OFTc6ukA9Eu7/YROBinqV8JEddEk1WV2Oz9uDpKOL0yj+KcrLuMnp6Ztxyt8ANy4QmN59z
	7CdVlf1taT9k7BG31u8hIh3Dy3g23Cg8bv1wZyfGgzW3JsRwVVWbVND6FFM8BlYfL4CEsZ
	g6tjNA9PKTSNl0ACLavVPW/vdNqMJYw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-w4fOFj-WPMetl7R3dG9Hmw-1; Sun, 29 Mar 2020 21:05:35 -0400
X-MC-Unique: w4fOFj-WPMetl7R3dG9Hmw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 211B1189F77A;
	Mon, 30 Mar 2020 01:05:34 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EED35C1BB;
	Mon, 30 Mar 2020 01:05:31 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:05:26 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Add line after
 variable declarations
Message-ID: <20200330030526.7a1a3b9d@elisabeth>
In-Reply-To: <20200325164451.GA17569@simran-Inspiron-5558>
References: <20200325164451.GA17569@simran-Inspiron-5558>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16

Hi Simran,

On Wed, 25 Mar 2020 22:14:52 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Add whiteline after variable declarations to remove the checkpatch.pl
> warning:
> WARNING: Missing a blank line after declarations
> 
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>

Sorry for the late review. This patch introduces similar changes to the
other patches you posted to fix checkpatch warnings for rtl8723bs, so I
think they should be posted as a patchset instead.

-- 
Stefano


