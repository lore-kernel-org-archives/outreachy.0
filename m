X-GM-THRID: 6205554058197991424
X-Received: by 10.112.150.229 with SMTP id ul5mr1775835lbb.2.1444892863431;
        Thu, 15 Oct 2015 00:07:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.228.135 with SMTP id si7ls291252wic.23.gmail; Thu, 15 Oct
 2015 00:07:43 -0700 (PDT)
X-Received: by 10.180.189.49 with SMTP id gf17mr6484764wic.6.1444892863052;
        Thu, 15 Oct 2015 00:07:43 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id q6si1020359wif.2.2015.10.15.00.07.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 00:07:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id ll6so3976073wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 00:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Mkkh9Keso8dOtOcePzpHmZ6FvH3yl8WHf9iRy8dNSuw=;
        b=AT/2Q7MGRmnl/DQP/3RKgqZrqj7Y226Zo3pqL94XGz3t0Bd49zp5iNXP3qGIQ8hTaG
         DDHtd6XHRh8ZF+vh4uoT1sgR2Yl/XUhb9zYEi6nm59mHzUTXREs/MhQQq0Kx4FD3uh/V
         haE5tcPluRmoHK+nZ1iSIm7WZ/TBBWgjQ3+aC1j8vioCWL0hQyczd0fHqhG38S58LoJg
         5M21bO2I7ep549Jo5AS+fwTgoTwni+DPEbwc6kBFi4oPKW59UDu6JCdU9rG8v4i69bog
         fwJOA91qVJFxcOAGyY+iay7QzM8zlJyTDTgjnfMbdd/EdfyZOjK3uaov4f7RMQBrBCKo
         kqwg==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr9643552wjo.119.1444892862929; Thu,
 15 Oct 2015 00:07:42 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 00:07:42 -0700 (PDT)
In-Reply-To: <20151015070138.GD3134@sudip-pc>
References: <20151014171850.GA19220@ubuntu>
	<20151015065035.GC3134@sudip-pc>
	<CAKHNQQHwsnzcxqvkTS-TVwZXOp5OLOADndP0V6wLJJnFTaY9EQ@mail.gmail.com>
	<20151015070138.GD3134@sudip-pc>
Date: Thu, 15 Oct 2015 12:37:42 +0530
Message-ID: <CAKHNQQG4SmQeqiaVascD4+zc51ipvG7qY1j_Zx4KNj_4p_MB2g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unnecessary code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 12:31 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Thu, Oct 15, 2015 at 12:22:35PM +0530, Shivani Bhardwaj wrote:
>> On Thu, Oct 15, 2015 at 12:20 PM, Sudip Mukherjee
>> <sudipm.mukherjee@gmail.com> wrote:
>> > On Wed, Oct 14, 2015 at 10:48:50PM +0530, Shivani Bhardwaj wrote:
>> >> The variable frame_authorized is declared and mentioned in the code but
>> >> is not used anywhere so, it should be removed. Also, two case statements
>> >> are merged by removing an extra break.
>> > <snip>
>> >> @@ -1106,10 +1105,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>> >>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
>> >>                                            wds != NULL)) {
>> >>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
>> >> -                     frame_authorized = 0;
>> >> -                     break;
>> >>               case AP_RX_CONTINUE:
>> >> -                     frame_authorized = 1;
>> >>                       break;
>> >
>> > Just a doubt, it now becomes:
>> >         case AP_RX_CONTINUE_NOT_AUTHORIZED:
>> >         case AP_RX_CONTINUE:
>> >                 break;
>> >
>> > If these two cases are not doing anything then what is the use of having
>> > them here in the switch-case?
>> >
>> > regards
>> > sudip
>>
>> Because we don't have a default case here and the variable in switch
>> might still get these values based on some other code.
>
> I think default case is to handle all cases which are not given by case
> statement. What will happen if variable gets these values but these
> cases are not mentioned? switch-case will see that these cases are not
> mentioned and will exit the switch-case. In the situation where these
> cases are mentioned, switch-case will see these cases exist, will come
> to these cases and breaks out of switch-case.
> Am I understanding anything wrong here?
>
> regards
> sudip

No, you are completely right. :) So, should I remove these cases? And
if these cases are to be removed there won't be a need of switch case
at all. Or should I leave it thinking that programmer might have to
make some changes?
Thank you.

