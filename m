X-GM-THRID: 6801392738100051968
X-Received: by 2002:a25:cec8:: with SMTP id x191mr360059ybe.39.1586226851063;
        Mon, 06 Apr 2020 19:34:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:aab3:: with SMTP id t48ls656438ybi.2.gmail; Mon, 06 Apr
 2020 19:34:09 -0700 (PDT)
X-Google-Smtp-Source: APiQypKV5R+jc3EE/b6gE7O16xqEtWFPOMHw2/Ov+adpS4HigxokJRiqGRlTjrSGjv9UK3sYS0LJ
X-Received: by 2002:a25:4144:: with SMTP id o65mr420215yba.178.1586226849844;
        Mon, 06 Apr 2020 19:34:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586226849; cv=none;
        d=google.com; s=arc-20160816;
        b=jbEvijf5j9r+ozzNb1bGUcM4erVc9Pj/kq0qGKkkdNlQtf58SmAGPJ5qTz1NwOK1oS
         yppkxHgiXCLERqWK9QnS2lDT2caHdnC87eBtGsA7OKSSw3LGqTqjbnSwI0EvkeU+2bIs
         r0xqlrILVTP5mk/wFE1qDWmzHcoud5KX4b1iTrr9eb3zzPcRFhB03L1cvYWPLrRwJDmd
         rQ28kpttvewiR9AkRNJ53KxwRqc+StSKrWnC/gQyS5bOnSfO1r4W73hfanNAuEW+QvO1
         yxiEzpoPpxiqsA6xSKfzRSJ3jroSqbpHYZ4JLn/GT8eERJ0ABPeG/L0xEPFNTn+Bji3h
         Z40w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=OZffhbjjuSZuNxWUQ+znpcIW5FdJLESdoID0ALU/J34=;
        b=r/+dsKuRmdeOlQuXb5ShWz48dcuSiGLhwnhunyflRXhxMRL/mCpeq4RQCshhce+i/3
         QvMmEpzQbvA3qpSwvI/Ss3/7IsVcKoyEHCJcL8Ks6yvcmq22Ul7SO5kiho/ypNuEWf2t
         F7mEG/0gJ4X0TgrgPnWFc4R3ZYe1BTPP7DjJzIX1EOKY4w7jLMI10P3Ehx6kX8fEm+75
         oV2MICUSE+rlLVgroYJenBZLCfASEf/JDlOS6vdqSnnKikZxLzTpZQCZc8NKPBlNfOxL
         fG1xDQtMvQDVH9m+ogkvl0qDUEkq9ESfZK9hXDR1GypmmzVirv2ON03LkgrMWhZy1GN6
         Vozg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Mz3o6jXy;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id m18si107210ybf.2.2020.04.06.19.34.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Apr 2020 19:34:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Mz3o6jXy;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586226849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OZffhbjjuSZuNxWUQ+znpcIW5FdJLESdoID0ALU/J34=;
	b=Mz3o6jXyjTF9EkqQeogzC2C6WqscYc+uXwZEhbmGRBthAlia+P1kIn65q4/dv6JrUxJSPo
	Fatxe0+FZG5kGkeQgpYdPxFhmnr717BxLyWvnXqcgRsglRuvj5+5hiuzojfcYOTUGL7SVv
	8agvZWG8UGPysq1s9IJ8+5tE2iLtbgE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-MZyA774PMR6d2vk-bVySRA-1; Mon, 06 Apr 2020 22:34:05 -0400
X-MC-Unique: MZyA774PMR6d2vk-bVySRA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4087B800D4E;
	Tue,  7 Apr 2020 02:34:04 +0000 (UTC)
Received: from localhost (unknown [10.36.110.15])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC59B5C28E;
	Tue,  7 Apr 2020 02:34:02 +0000 (UTC)
Date: Tue, 7 Apr 2020 04:33:58 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Need help using coccinelle
Message-ID: <20200407043358.14d2784f@redhat.com>
In-Reply-To: <20200407022453.GA1720@tulip.local>
References: <284f12c6-c1ab-4f1f-a325-569a7b8bfc1c@googlegroups.com>
	<alpine.DEB.2.21.2003071102220.2483@hadrien>
	<20200407022453.GA1720@tulip.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 7 Apr 2020 07:54:53 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> Am attaching the log files as well.

Missing attachment, I guess?

-- 
Stefano


