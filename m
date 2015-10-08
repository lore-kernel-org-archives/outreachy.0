X-GM-THRID: 6202672545102036992
X-Received: by 10.107.136.229 with SMTP id s98mr7909033ioi.34.1444328104681;
        Thu, 08 Oct 2015 11:15:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.168 with SMTP id ij8ls499236obb.21.gmail; Thu, 08 Oct
 2015 11:15:04 -0700 (PDT)
X-Received: by 10.182.72.166 with SMTP id e6mr7403232obv.47.1444328104301;
        Thu, 08 Oct 2015 11:15:04 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x230.google.com (mail-yk0-x230.google.com. [2607:f8b0:4002:c07::230])
        by gmr-mx.google.com with ESMTPS id q68si1012823ywf.0.2015.10.08.11.15.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 11:15:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) client-ip=2607:f8b0:4002:c07::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x230.google.com with SMTP id g206so56532372ykd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 11:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=mgdOfdtn0TAfSxlfa4fScCBgdztecQo+UVy7GU7z1C4=;
        b=uvdTjmGxWLRPX0pzaFMkqth/coy+K5XHqYEwXtEMYVoZZj9K3OjsFhaGQneKprIYay
         RA74VZfxAV3I3KutwZRu7wgaBH0/267Hc5BsRGeRg7aLiR44Y/p/6MZmVK3HskOI6vdz
         M/gPBbocHqhpPmzj+uqPFBfTBAV5ELEDDRNf74Y+15871AG3iffkFQnloar1Gwd4vGQX
         bKdYe+tnYGH7XLvEM7Y9VDPklsJa2YcLt0m+aMrmOMRub3m6Vo6ljkNgwjWzBx6MhwxY
         vgjNRGL+gyrtixbKhBV0YLwtld4XbxA+i2B9PsIR+BUehFa1TkKJou92dJ9KN/vFcZ+3
         aCEw==
MIME-Version: 1.0
X-Received: by 10.129.29.5 with SMTP id d5mr6239152ywd.278.1444328104156; Thu,
 08 Oct 2015 11:15:04 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Thu, 8 Oct 2015 11:15:04 -0700 (PDT)
In-Reply-To: <CAHWJYFmWyZiwCHVW0qhex-NLTZudALt3j1fvf3UikYXpeXXHBQ@mail.gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
	<5db27019c28d1f4d1313654d81e6dc21d562284b.1444241200.git.ciorneiioana@gmail.com>
	<20151008045556.GA3294@sudip-pc>
	<alpine.DEB.2.10.1510080639430.2626@hadrien>
	<CAHWJYFkdtznoTwn_UNd-U09BmfYAkiaHZcmqyk0J9KRcJp3xWw@mail.gmail.com>
	<alpine.DEB.2.10.1510080748240.2559@hadrien>
	<CAHWJYFmWyZiwCHVW0qhex-NLTZudALt3j1fvf3UikYXpeXXHBQ@mail.gmail.com>
Date: Thu, 8 Oct 2015 21:15:04 +0300
Message-ID: <CAHWJYF=pbh6txTBpJdiPJiQuUmnykfG4ECR0FMw7NXpgZ5VHuA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/9] staging: iio: adc: properly
 indent to match open paranthesis
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 8, 2015 at 9:52 AM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> On Thu, Oct 8, 2015 at 9:49 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>
>> On Thu, 8 Oct 2015, Ioana Ciornei wrote:
>>
>>> On Thu, Oct 8, 2015 at 8:40 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>> >
>>> >
>>> > On Thu, 8 Oct 2015, Sudip Mukherjee wrote:
>>> >
>>> >> On Wed, Oct 07, 2015 at 09:13:40PM +0300, Ioana Ciornei wrote:
>>> >> > Indent parameters ansd arguments passed to function calls to match
>>> >> > open paranthesis
>>> >> >
>>> >> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>>> >> > ---
>>> >> This patch will introduce new warning of "line over 80 characters" while
>>> >> fixing the warning about "Alignment should match open parenthesis".
>>> >> I am not sure if it is ok to introduce new warnings to fix some other
>>> >> warnings.
>>> >
>>> > It would be best not to, espcially if it is all white space related.
>>> >
>>>
>>> I mentioned in the cover letter that this patch introduces checkpatch
>>> warnings in order to get your feedback on this.
>>> From my point of view, the readability has improved significantly with
>>> this patch but if you consider that it is not necessary
>>> I will discard those changes that create other warnings.
>>
>> I don't have the patch in front of me, but can't you just fix the other
>> warnings too?  If it improves readability, it seems to be too bad ot lose
>> the change.
>>

I had a better look at this particular patch and I am still in doubt
about this one.
If a indent to match the open brackets I do not see a possible way to
not cross the 80 characters limit.

I had a try with Sudip's sugestion to put the return type of a
function on a separate line but that does not apply to all cases.
What should I do in this situation? It is better to just leave the
changes that do not introduce warnings or just drop the patch?

Thanks,

Ioana

