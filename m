X-GM-THRID: 6200611211635064832
X-Received: by 10.195.18.100 with SMTP id gl4mr1837197wjd.4.1443732808838;
        Thu, 01 Oct 2015 13:53:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.166 with SMTP id az6ls232942wib.15.canary; Thu, 01 Oct
 2015 13:53:28 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr1831246wjb.3.1443732808472;
        Thu, 01 Oct 2015 13:53:28 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id c1si141649wiv.3.2015.10.01.13.53.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 13:53:28 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0LuLSB-1agUM42JmB-011lq9; Thu, 01 Oct
 2015 22:53:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shraddha Barke <shraddha.6596@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: ptlrpc: Make functions static
Date: Thu, 01 Oct 2015 22:53:27 +0200
Message-ID: <18050482.hzx1IbEyMT@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1510011559340.2648@hadrien>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com> <4003012.PLAPRmBvBo@wuerfel> <alpine.DEB.2.10.1510011559340.2648@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:Zhs3tDhyojRNEcij8T4wtzxa6/itaUYLzfkNWcCgjWmE6cb8FxP
 HR1OSSeddKYocM6fyFgo/v2NoBRZqIrmwO8XF1ZijzalBGagOBZ5kzc7ykQWS8CGDzcRpuK
 70UKLWPBLPVpapGA5HzxDooxuBcHHeZklAsUEZtECtk9Qqj9nZFJGtiQvIzvhut6MaSAsea
 +dH23Bx+Nq/ppVtcRDMSQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:G3ACcxNGq1I=:PzGV4Ij7Aky6nA3saYspLy
 rRfgezKe+EkQ5CX5dHDuFVsfgQ33rnxMBEQomunGBfTXCjP6/58UKEjSMS4Sd1ySDGW9Kh8cQ
 Iid9mImFI+h5imC+79S8AjfvCzCxTKaKhcF5fJtw/gji+BpqbkRxTDWusivoD/KToobaGIoy4
 HgLD4qhtaiNox2VdC84k6bwQEu89AhBIsqDlqoegozH4KsjhctHkT2cLvY/t1WMzCkF+42gBd
 qatagCrgnDEjcSci6gKdYuXa0lEWv3Q6SxwjbWC5qdnaupFAYNYijmCAPLq4beXVq5MFAwthn
 a1mOLZd5smvACEbjDf6qgjN3ZtOq0FcBDURqyHaVdGfRuLbAqDbmGK2LXJ+jSrayXQAOJCkvm
 FYJDc0OUPWxqAX0K2qRXtLuRSZvrTFym/pQyoOzUmU5wJ8C0XsEuA3eHR+lgHCQG4sWGgnNVw
 sMxMiaeGF9vDi2bK/d+BpjpM9+vwvitBe4kaYz+xzwcl+wNmSNYzNOdTQur/sWmsUAaCfE60F
 KLFM/VH7NWmr+R0Dv96Rlt6sH4ukX+Ua3Fp1oW7xx5aYC4yn1DhVSo8+snCYd+e7d3TAewPuY
 L/hzOpSmtB3v7uewh9SHvUkHK86b5h4FTHafCzKyr0blsPROaObcBU9t74WPF1JrVXF9+FV5m
 PGN0lxESLfPteZYq6z6PhheQEWrUztStCTOCpzbOZYtNXtBKpEO+t1eHJNfI0HHy9bXCVrsRG
 0cozdzZ+u6SQnYWm

On Thursday 01 October 2015 16:12:53 Julia Lawall wrote:
> On Thu, 1 Oct 2015, Arnd Bergmann wrote:
> > On Thursday 01 October 2015 15:49:21 Julia Lawall wrote:
> > > On Thu, 1 Oct 2015, Arnd Bergmann wrote:
> > > > On Thursday 01 October 2015 15:20:39 Julia Lawall wrote:
> > > > > On Thu, 1 Oct 2015, Shraddha Barke wrote:
> > > > > > > Note that there are hundreds more symbols in lustre that should be made
> > > > > > > static.
> > > > > > > Most of them are harder to find because they have a declaration in a header
> > > > > > > file
> > > > > > > despite being only used in one place.
> > > > >
> > > > > Why does it make it hard to find?  One can make a spearate check in .c
> > > > > files.
> > > >
> > > > We currently get a sparse warning for each global identifier definition
> > > > that is not preceded by a declaration, but since most of our tools
> > > > (gcc, sparse, coccinelle, ...) work on a single file at a time, they
> > > > do not know whether a global symbol that is defined in a C file and
> > > > (incorrectly) declared in a header is used in another C file or not.
> > >
> > > OK, but from Coccinlle you can just call grep, and check the extensions on
> > > the returned file names, so it is not a big problem.
> >
> > I'm not following here. How exactly would you find symbols like this with coccinelle?
> >
> > subsystem.h:
> >
> > extern int subsystem_state;
> >
> > subsystem.c:
> >
> > #include "subsystem.h"
> > long subsystem_state;
> >
> > static void function(void)
> > {
> > 	...
> > 	subsystem_state++;
> > 	...
> > }
> >
> > with no users of this variable outside of this file.
> 
> The following uses ocaml, because I'm not very good at python...
> 
> @r disable optional_storage@
> identifier f;
> position p;
> @@
> 
> f@p(...) { ... }
> 
> @script:ocaml@
> p << r.p;
> f << r.f;
> @@
> 
> let l = Common,cmd_to_list
>           (Printf.sprintf "cd /my/linux/path; git grep %s" f) in
> let other_files =
>   List.map (function x -> List.hd(Str.split (Str.regexp ":") x)) l in
> let file = (List.hd p).file in
> match List.filter (function x -> not(x = file)) other_files with
>   [] -> Printf.printf "function %s is only used in file %s\n" f file
> | _ -> ()
> 
> That is, find the definition of a function with the pattern matching rule,
> then obtain the name and position of the function definition, then in the
> ocaml/python rule, grep for the name of the function, and extract the
> names of the files from grep.  Drop all the names that are the same as
> that of the file containing the definition, and print an error message if
> the result is an empty list.
> 
> The disable optional_storage at the beginning of the first rule prevents
> the function definition from matching a static function, since static
> isn't mentioned in the pattern.
> 
> This takes care of the case of function definitions.  Something similar
> could probably be done for other kinds fo variables.  That could be a bit
> more awkward, though because variable declarations both inside and outside
> function definitions look alike.

Ok, I see. Yes, this looks nice, though there might still be a small number
of false positives (e.g. identifier used in inline function in the header
that declares it, inline function used elsewhere) and false negatives
(function name mentioned in a .c file comment elsewhere but not actually
called).

I don't actually understand half the code you write, but conceptually
it makes sense and is similar to what I did manually. If you plan to
actually make use of this method, there are a couple of improvements
that I can think of:

- "git grep -w" to match only whole words
- "git grep -l" to list the file names only, rather than manually parsing
  the default grep output
- filter out declarations from header files as you mentioned (I don't
  see this in your code).

	Arnd

