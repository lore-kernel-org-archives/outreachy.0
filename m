X-GM-THRID: 6534657346534113280
X-Received: by 10.107.191.4 with SMTP id p4mr5856307iof.126.1521473417284;
        Mon, 19 Mar 2018 08:30:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.163.196 with SMTP id m187ls1199021ioe.3.gmail; Mon, 19 Mar
 2018 08:30:16 -0700 (PDT)
X-Google-Smtp-Source: AG47ELv93xy/xa6HAlgd5FIh++6LOJwT2O4oxEIiLRHZLtUU6rKZEpsHHRvS4K3xU8YvRZkkUkFJ
X-Received: by 10.107.19.97 with SMTP id b94mr5999662ioj.59.1521473416172;
        Mon, 19 Mar 2018 08:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521473416; cv=none;
        d=google.com; s=arc-20160816;
        b=VvjQLMitPTSlk6K6DNa2rZ4wZHNkx/j7AUV6PO3PlXxvavnopA7BHEMtliZoFSa8Nn
         0EesIc7mX8lydrgGGa7hvyBOkeHhjUpm8Plyz9e3LjyM+m26S+TuT6u72DvZmyfa1DgH
         Qx4TFVL5TrJWYXRE0X10T/+p7jVaTIqGFGgNGdaZu4jiDf4asM75H5kbyvQobE99JolP
         edQjRjiKNUKbOqSC1npbOG7SgM7jL0OP2ugSu8tjVb+WtzrhdrWPbUvWqGPiraniAD/Y
         SpmIMHb4RvZqg1yf6bBLS2ozFrBD+KqbtvvQzucMTv8DC/ZsgTEF10lKDn6AeQ4srH3q
         niSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=1wpMlhSlkW3+AtJG8SlLXGrFpJL30ZwyLPO12/mRqss=;
        b=X5w/3JFraITTfjhWVv1ZbzKrhRp62EGM7d0YPN/9LFMfJUOnzDUYL3qDm/PtRw+iRv
         0a4ITS39fWah2QpjQfiA8aMHqKK/G5Hnk/6qi0lryL624PAq9KEZ/NjjpLINpE2PfsWx
         zqMT2NHFCGknt6g1kSF8mBKLcjxj5KUA8CTAjl9n2fSnu9fyuzFMN9FGpYrQ3ZFb+GEV
         QvXTBd5U1dz4sXPllrPwZ3rGXKjttbYOxKODr9NnnPppp9l1w1TnaNIu/7X90+MVhquR
         gV0i1wexw+M0aWFmJrFSYiHZ8ql/kHgmIWx15Sssa5QdLpO1/P8h2TrqcbUx2gcwk0WE
         8wXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h1si22366iob.1.2018.03.19.08.30.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 08:30:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3F277FD7;
	Mon, 19 Mar 2018 15:30:15 +0000 (UTC)
Date: Mon, 19 Mar 2018 16:30:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging:vc04_services:bcm2835-camera:controls.c: Fix
 multiple line dereference
Message-ID: <20180319153015.GA6022@kroah.com>
References: <1521468462-28073-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180319141241.GA17366@kroah.com>
 <CAC4++KDrEYS7CS-mVaN6j9wrSJRkD-ycAV2CBJ8MPDh5wOL6-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC4++KDrEYS7CS-mVaN6j9wrSJRkD-ycAV2CBJ8MPDh5wOL6-Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Mon, Mar 19, 2018 at 08:54:11PM +0530, Nishka Dasgupta wrote:
> The reference (in this and other patches of the same type) is of the
> form dev->component[something]->output[something else]. Because of the
> line limit, this tended to be split over multiple lines even though
> it's technically (as far as I can tell) a single argument. Such
> splitting may have the effect of making the code harder to follow
> (since we now have to mentally assemble the same value from multiple
> lines of code).
> By condensing the parts within the square brackets to 3 or 4
> characters, I could fit the entire variable in a single line without
> violating the 80 character limit.

Yeah, but you "waste" two new variables for this, and force the reader
to have to go backwards to try to understand what exactly the array
values are, and be confused as to why they never change.

If you don't like the statement, it can be all put on one line, and
ignore the 80 column rule here.  Or better yet, just indent things a bit
to keep it all on one line, or use a temp variable for the pointer
value.

As it is, I don't like this change, sorry.

greg k-h

