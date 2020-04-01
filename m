X-GM-THRID: 6809167002234519552
X-Received: by 2002:aa7:9097:: with SMTP id i23mr20769478pfa.170.1585709401299;
        Tue, 31 Mar 2020 19:50:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls14946584pfg.9.gmail; Tue, 31 Mar
 2020 19:50:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtmuvfhPz2KaLOd0E6PToiimFwN6oi/DtSAPw8Z66iSPoxejsnz3hE1ns/mp8SEpu7tGVJ1
X-Received: by 2002:a62:5f06:: with SMTP id t6mr21964023pfb.192.1585709399933;
        Tue, 31 Mar 2020 19:49:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585709399; cv=none;
        d=google.com; s=arc-20160816;
        b=DIStv9p6bqu0QRiEQQrIIVncvjs5XFLnak57UYTdP4uFcidqOTViYKdV7ZhOBN/PEb
         LqAu8jzMN7HCHbgUz5Ms7YcZKRcz7OftDLJMtdct1TbOYxChFuAIVrvF8rhhML0DLBZ+
         Nd/bdkFhssEL2G2l2hcht9VcDPzq2I4hHnamAC4Sinm4p+2aXJZ2R1pp68uhJ1BPSgsn
         FXEzx6Et0wrLRYwxbNnFeSs+2uEvoMF6I7bUO1vlqw3ixbSdT+ENCUztn53MPDEqtMI/
         shSKSudSQiZw4Tww58XhjykO0X7+nENFiJSZaXdHwqnDca47BoP9X6V9u4KhnjXw0Sjp
         DVug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=87CPdQaFZwGpjPHcgFcJRZhm5Z8ACavSkWeMcra+hCA=;
        b=jJUtCKpzdKoN6fAlVykSstiP8RnKbIDbvig4YLGFVWrqJZgS/vpjUrimLnSVdjRYsT
         zGepRJvOnMZEINQ1pzLdpf1xR0/pcxvDLDGF5ClKq0tw4s54cfCIYnEEgNQ7tWNbxA9M
         dEYu+9uq1XnpC1/kogG/9SHlF7wLv/avrOrKQ3C67y2qxpunJ7B+6daiP28aJaxYpJUr
         dnK/OSWSv3waQd3sYZHXEESGAc8ca2uJoSHLKHZ4w8+Icq1O+QNFY5jwXJAs7z4FlcIT
         Z/PhdLl+EewVAySZegVNoRCg/Ma8RJ+mdtyW38+2w8n94DOlPXIccgA/+Ok+ZuT2SquQ
         AQdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Co4sUg0j;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id j14si43421pgg.1.2020.03.31.19.49.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 19:49:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Co4sUg0j;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585709398;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=87CPdQaFZwGpjPHcgFcJRZhm5Z8ACavSkWeMcra+hCA=;
	b=Co4sUg0juf/ZaoNd9aLZvyqv9MYUO8VuwmLryVJDQiBLk0r77Auxs1U+gI2hhK6SqSSO7i
	nT1HNExzCLMz1gnpVs17ojjP4Ata9TV6vsDM0Qq/IxwNeFyTKbnBWxUUKhP1WQTJpuzVj8
	3QAgWhrhyM25L3hhrFWXnVrk1bmXnWA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-dGsWV7V1NbCLRRC_hna5eg-1; Tue, 31 Mar 2020 22:49:57 -0400
X-MC-Unique: dGsWV7V1NbCLRRC_hna5eg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F823107ACC9;
	Wed,  1 Apr 2020 02:49:56 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1344D5D9C5;
	Wed,  1 Apr 2020 02:49:54 +0000 (UTC)
Date: Wed, 1 Apr 2020 04:49:48 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH] staging: qlge: Remove
 extra blank lines
Message-ID: <20200401044948.345a7327@elisabeth>
In-Reply-To: <20200331190721.GA19185@ubuntu>
References: <20200330051343.7841-1-debsoumyajit100@gmail.com>
	<20200330200724.1ad30b76@elisabeth>
	<20200331190721.GA19185@ubuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 1 Apr 2020 00:37:28 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> On Mon, Mar 30, 2020 at 08:07:24PM +0200, Stefano Brivio wrote:
> > On Mon, 30 Mar 2020 10:43:43 +0530
> > Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> >   
> > > Remove unnecessary extra blank lines to improve code readability and to
> > > adhere to the Linux Kernel coding style.
> > > Reported by checkpatch.pl
> > > 
> > > Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>  
> > 
> > This looks good to me, but why isn't it in a series with the next patch
> > you sent? They touch the same driver with similar purposes...
> > 
> > -- 
> > Stefano  
> 
> Should I resend this patch along with the other patches concerning the same
> driver as a patch series?

Yes, exactly -- it's just another invocation of git format-patch, you're
almost there.

-- 
Stefano


