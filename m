X-GM-THRID: 6337380973243531264
X-Received: by 10.200.56.181 with SMTP id f50mr559524qtc.11.1475569801127;
        Tue, 04 Oct 2016 01:30:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.224.3 with SMTP id c3ls3000662ith.7.gmail; Tue, 04 Oct 2016
 01:29:58 -0700 (PDT)
X-Received: by 10.66.180.45 with SMTP id dl13mr481833pac.150.1475569798493;
        Tue, 04 Oct 2016 01:29:58 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si666764pac.1.2016.10.04.01.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 01:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8C222901;
	Tue,  4 Oct 2016 08:29:57 +0000 (UTC)
Date: Tue, 4 Oct 2016 10:25:00 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: keila novo <laurana5@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Fwd: Re: [PATCH]board/Kconfig: Add a paragraph that describes
 the simbol
Message-ID: <20161004082500.GA1525@kroah.com>
References: <20160929152837.GA32652@kheixx-VB>
 <20161004042323.GB21357@kroah.com>
 <CACrt6ML2ggFy-mC5TLYmQQur30iKN91eNSRq6eiN6+un+AYR9Q@mail.gmail.com>
 <CACrt6MKMzB6dsxYkGBF-OG54e3UGgeCcH2_iGRoyA93=f4dXOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACrt6MKMzB6dsxYkGBF-OG54e3UGgeCcH2_iGRoyA93=f4dXOg@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)


Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?


http://daringfireball.net/2007/07/on_top

On Tue, Oct 04, 2016 at 10:18:47AM +0200, keila novo wrote:
> ---------- Mensaje reenviado ----------
> De: "keila novo" <laurana5@gmail.com>
> Fecha: 4 oct. 2016 7:41
> Asunto: Re: [PATCH]board/Kconfig: Add a paragraph that describes the simbol
> Para: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> Cc:
> 
> I made that change because when a checked with chechpatch.pl, it took a warning
> that said: "please write a paragraph that describes the config symbol fully".
> So I tried to fix it adding a little paragraph on the top of the file.

The "paragraph" should be in the help section for that Kconfig option,
not as a comment in the file.  If you run checkpatch.pl on the file
after you made this change, I think you will still have the same
warning, right?

But, to write a help entry for a Kconfig option, requires that you
understand what the driver and option does.  Based on your paragraph, I
don't know if you do know what this code is here for.  So perhaps you
might want to move on to a different type of warning fix?

In other words, don't make a change just because a warning shows up, but
because you understand what the warning means, and what the change you
are making does.

Hope this helps,

greg k-h

