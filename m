X-GM-THRID: 6208412714735239168
X-Received: by 10.194.240.230 with SMTP id wd6mr3632151wjc.0.1445517498585;
        Thu, 22 Oct 2015 05:38:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.86.234 with SMTP id s10ls622902wiz.33.gmail; Thu, 22 Oct
 2015 05:38:18 -0700 (PDT)
X-Received: by 10.181.29.103 with SMTP id jv7mr3728579wid.0.1445517498037;
        Thu, 22 Oct 2015 05:38:18 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id c7si1017024wiy.3.2015.10.22.05.38.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:38:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id ll6so115119632wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 05:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=thC1pPedylimWXBc21K81mHGouewAJiyYnBRKgS18Tk=;
        b=p3dBH9h4KdhErACARxtyqBeP1iOFVo3gn1uNEVPbHklmD+F+1YO9ke9jwifcQoMaBl
         vtDayrQr7wjNkT65cFvDCflSGkP3ExLYfzPnGpKNLJF13y+BZ4G/rO/h43QswxZYMlj2
         wiIAy8izwgazeU+J4BF6aITo9pU5DkS/uVtDCGhrjF6m5PwyhAXDeLxxBWuRFuDaMlon
         qolthcLB2LOTTEUWULdrT+iqEzB+kyumSZV2OjbK1b7yIVSAJ7vC7Nf89v2zrSdN2a2D
         mWFV7LKaFVXQ3nx7Fm9KY2Vw+nMiQIEy7Ov2UW33Ay6Nx1FgoG8zu3G9A9Rr8I/f1V0Q
         0eZQ==
MIME-Version: 1.0
X-Received: by 10.180.189.102 with SMTP id gh6mr37578912wic.95.1445517497952;
 Thu, 22 Oct 2015 05:38:17 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Thu, 22 Oct 2015 05:38:17 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510221436380.2607@hadrien>
References: <20151022101158.GA17223@ubuntu>
	<alpine.DEB.2.10.1510221232200.2607@hadrien>
	<CAKHNQQHxMbQtwVhA8uVkP8uZqX-q_HwSWNmKRPhXwFYsXpve-w@mail.gmail.com>
	<alpine.DEB.2.10.1510221310400.2607@hadrien>
	<CAKHNQQHP7dpLZdz6E=CC+ziN4df1Cdtb7Es-qc2KCFVnXrpF6w@mail.gmail.com>
	<alpine.DEB.2.10.1510221342290.2607@hadrien>
	<CAKHNQQE-rMmuZ-UyzLyYkaS4kcT7UMqLRec-kzhKODA+zX8bAw@mail.gmail.com>
	<alpine.DEB.2.10.1510221430190.2607@hadrien>
	<CAKHNQQFTZtBPjC7=ffib8iORubFKSo_B0GNKvJSbUXuGx6ryUQ@mail.gmail.com>
	<alpine.DEB.2.10.1510221436380.2607@hadrien>
Date: Thu, 22 Oct 2015 18:08:17 +0530
Message-ID: <CAKHNQQF1LMcU9+cPtMs=wARNu808pZVUm2Jf2mmu9qZh4uufEw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: coreconfigurator:
 Drop unneeded wrapper functions
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 6:07 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Thu, Oct 22, 2015 at 6:00 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>> >
>> >> On Thu, Oct 22, 2015 at 5:13 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> >
>> >> >
>> >> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>> >> >
>> >> >> On Thu, Oct 22, 2015 at 4:43 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> >> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>> >> >> >
>> >> >> >> On Thu, Oct 22, 2015 at 4:04 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> >> >> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>> >> >> >> >
>> >> >> >> >> Remove the wrapper functions get_address1, get_address2 and get_address3
>> >> >> >> >> as they are not required and replace their calls by suitable functions.
>> >> >> >> >
>> >> >> >> > The existing functions serve two purposes:
>> >> >> >> >
>> >> >> >> > 1.  They make clear that an ethernet address is being copied
>> >> >> >> > 2.  They hide the offsets
>> >> >> >> >
>> >> >> >> > To preserve the first property, the kernel has a function for copying
>> >> >> >> > ethernet addresses.
>> >> >> >> >
>> >> >> >> > To preserve the second property, maybe it would be possible to #define
>> >> >> >> > constants that describe the offsets, if there is any way to figure out
>> >> >> >> > what they semantically mean.
>> >> >> >> >
>> >> >> >> > julia
>> >> >> >> >
>> >> >> >>
>> >> >> >> Right. I am thinking of writing one wrapper function instead of three
>> >> >> >> where I'll pass on an offset each time which will be #defined.
>> >> >> >> For example,
>> >> >> >>
>> >> >> >> #define ofs 4
>> >> >> >> #define c 6
>> >> >> >
>> >> >> > #define things should always be in all (or at least mostly) capital
>> >> >> > letters.
>> >> >> >
>> >> >> >> static inline void get_address(u8 *pum8sa, u8 *addr, u8 *offset){
>> >> >> >>         ether_addr_copy(addr, pum8sa + offset);
>> >> >> >> }
>> >> >> >
>> >> >> > I don't think this is the best idea.  ether_addr_copy is something that is
>> >> >> > easily understandable to someone reading the code.  get_address, on the
>> >> >> > other hand, could be anything.  If you can find meaningful names for the
>> >> >> > offsets, then it would be better to say eg:
>> >> >> >
>> >> >> > ether_addr_copy(addr, pum8sa + NAME1)
>> >> >> >
>> >> >> > julia
>> >> >> >
>> >> >>
>> >> >> #define NAME1 4
>> >> >> #define NAME2 10
>> >> >> #define NAME3 16
>> >> >
>> >> > Sorry, NAME was just supposed to be a metavariable, that you could fill in
>> >> > with something appropriate.  From the comments in the code it seems like
>> >> > it should be ADDRESS1, ADDRESS2, etc.
>> >> >
>> >> > julia
>> >> >
>> >> >
>> >>
>> >> Yes, I understand that. I was just presenting a prototype. :)
>> >> I was thinking of ADDR1, ADDR2.. But, ADDRESS1, ADDRESS2,.. would be fine too.
>> >
>> > Either way should be OK.
>> >
>> > julia
>> >
>> Thanks. I'm sending v2.
>> I'm getting implicit function declaration error for ether_addr_copy
>> function. Can it be ignored?
>
> No.  You need to find the appropriate header file to include.
>
> julia

All right.
Thank you

