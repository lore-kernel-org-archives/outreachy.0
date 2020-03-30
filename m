X-GM-THRID: 6808898651661795328
X-Received: by 2002:a37:a183:: with SMTP id k125mr11009942qke.335.1585572588780;
        Mon, 30 Mar 2020 05:49:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1b11:: with SMTP id y17ls6826818qtj.8.gmail; Mon, 30 Mar
 2020 05:49:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuFWuyRyhdP1UjuSCnE5rZdJI+OS9X5fbw5KwGzbSUffM5w9jqEtEu+w4VHDrRYy4WU8k5O
X-Received: by 2002:ac8:326d:: with SMTP id y42mr11933614qta.272.1585572587365;
        Mon, 30 Mar 2020 05:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585572587; cv=none;
        d=google.com; s=arc-20160816;
        b=W+GahNm1xMi6hvJ0wnxrQKHZVTXRmvpZ7do1Sad/Ch9be+ktrE9X5YpX9n1nYK+kFV
         MSpHU0PQgN07q7NrdhEx+PL8TGYDKmcrVEgjfQu3vnZL+njvxLtQLbCApkM7oFDO5yUw
         KV50xMzwWN4Q992KzXVObTh/dbEerPOq2VLrXHxQ7B6DRi6TgVqdSowLIvY+g/2Klb9f
         at85fOiymLTHj7qc/66YWDQQMKHN+0jt7AJY3VKGxnTVPnYn4CTdiPXet5uZhp/DMjl8
         0wvNj5KKuS0jRC1CtSbBkMoAUW8xFlwWR/Fx0V2Ayok18CF2ObvdE8cKFB1kAv9JWAwc
         7jjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=/jffCBjGzWQoxUxTPnCTrdySF8I3VlvnVhsG9N/UmSc=;
        b=Mo43jR3bB1bDg9aWWWirZRMcwRFUanDHoJjjyQWdUTB1KnCmMZagwglce/UUmQSBVi
         c1yZWBe9Fir+zEhmoYn5xQSXkO4DITFzh/+aR6lyPcm8EmkEjkHGkPJNlf8KhO0vLce3
         GqSHCeplT1TwJ4QLsJdr0QsVQMyvwFBVcl92QDAPrzIMW5EuMPYCAfKIDwwNNI+/QmlI
         4cEXAQVDTnW9hJA0TFKGOWzESG18MOEonvOldoZQr070F5DsM/YRV3GQHA+3xf4qXNTh
         WIQguxkAA8d1dUtWewO33PKSC0IJUxljGYLj68pawdlSyjCZCkQI54v3wApe5VpF2Xbk
         BQ2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=av3ONYDc;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id d34si971551qte.4.2020.03.30.05.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 05:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=av3ONYDc;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585572587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/jffCBjGzWQoxUxTPnCTrdySF8I3VlvnVhsG9N/UmSc=;
	b=av3ONYDcoQfTBAo8837Ig2lhS4QM0hvdwfLfiDHr7FmbZR/iCotrTnjPogUsSulCRForxL
	SL8CUYI27TfF/ao/2XKBkUKSKkBww/PPgXFnGsmadN9PwjfGM7wYq2OowGdJHn0U0kSS6R
	FCHfY6JxRe4Gczy7e4j28365fVTiHmA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-56-oCieoGj3N5WIO2OzEh_Gsw-1; Mon, 30 Mar 2020 08:49:43 -0400
X-MC-Unique: oCieoGj3N5WIO2OzEh_Gsw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A2B7149C0;
	Mon, 30 Mar 2020 12:49:42 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC7A998A21;
	Mon, 30 Mar 2020 12:49:40 +0000 (UTC)
Date: Mon, 30 Mar 2020 14:49:25 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH 1/2] staging:
 wlang-ng: Properly align the lines of function call
Message-ID: <20200330144925.4e7d4deb@elisabeth>
In-Reply-To: <CAMS7mKA7g8Ea2RpkZOZ0R5mkJM+zwawB86CtBiY=D-VZhW6q0A@mail.gmail.com>
References: <20200327144229.19738-1-debsoumyajit100@gmail.com>
	<20200327144229.19738-2-debsoumyajit100@gmail.com>
	<20200330111251.1d2e6db6@elisabeth>
	<CAMS7mKA7g8Ea2RpkZOZ0R5mkJM+zwawB86CtBiY=D-VZhW6q0A@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Soumyajit,

On Mon, 30 Mar 2020 15:25:03 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Sorry  for the inconvenience.
> Now I am also confused a bit too
> But as much as I understand,
> this patch is somewhat different from the change I wanted by casting to i32.

Can you please stop top-quoting first? This:
	https://en.wikipedia.org/wiki/Posting_style#Bottom-posting

is the preferred way to comment on code and intervene in discussions on
the communities we'll be working with.

> This patch just addresses the warning of properly aligning the lines as
> reported by checkpatch.pl.

...but it makes the problem worse, because instead of just 89 columns
you reach 115 columns and you also exceed 80 columns with code, not
just with comments. That's how the two things are (obviously) related.

> While, the change of casting to i32 was for line over 80 characters
> warning, which is a different warning altogether, so that change must be
> addressed in some other patch.
> I wanted to cast to i32 so that I can shorten the line and resolve the
> warning of line over 80 character as reported by checkpatch.pl
> 
> Sorry, for any misunderstanding. I am very new to kernel development and
> was confused a bit about the process then.
> Sorry for any mistake on my part.

No, sorry, but if you ask about something three times, and three times I
give you the same answer, well, the confusion will start happening on my
side.

I understand you might be tempted to find the easiest possible patches
to have a number of formal submissions, instead of losing your time
writing a simple test program (which would tell you that 'i32' doesn't
exist, by the way). I don't think it's a reasonable approach, though.

-- 
Stefano


