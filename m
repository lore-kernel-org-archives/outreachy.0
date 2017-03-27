X-GM-THRID: 6402052598675800064
X-Received: by 10.107.133.36 with SMTP id h36mr6743564iod.92.1490607554358;
        Mon, 27 Mar 2017 02:39:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.133 with SMTP id f127ls3671768iof.27.gmail; Mon, 27 Mar
 2017 02:39:13 -0700 (PDT)
X-Received: by 10.99.140.79 with SMTP id q15mr7276850pgn.46.1490607553606;
        Mon, 27 Mar 2017 02:39:13 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x22a.google.com (mail-it0-x22a.google.com. [2607:f8b0:4001:c0b::22a])
        by gmr-mx.google.com with ESMTPS id e196si3315itc.2.2017.03.27.02.39.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 02:39:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::22a as permitted sender) client-ip=2607:f8b0:4001:c0b::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::22a as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22a.google.com with SMTP id y18so66308263itc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 02:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=YUshfutjZaqcAqoXIBQfq96qVWvxUx7SY0cikxh0KRk=;
        b=OrM2Qa5gnZIR+St6/932Djhjscflx+tHFKSb+IxsuUbSU3FR5OJXZHUDagGAaWOhCS
         s7mFrTIRDQyQXY9a/fneyE8V1E28HB09/a68fENO6RrxBWeE9EjSzAa1YsPnpvNzAumX
         +DvMgmKS5xPoR3QzXpgrulREVMFKIFPxnCXcKEMn0aXFIEBzgfV6DeouKMIowitrpxmu
         MYpbm8zObFIgR0n2grRZ+5itbD2+5THRWw2fOUjmuPw/MKdI6flabst1+bXPitT6Y47p
         7r3MXnUFWkyDdtFlSpNZO99l/+5A1zOp0kWHtLYH3uyj34TcmXIqJAMWWH4aYTckNV18
         Io4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=YUshfutjZaqcAqoXIBQfq96qVWvxUx7SY0cikxh0KRk=;
        b=aFDOlXa0X+uS37DJw2goRPz3Pc0gauEjROsI/WbZJXntj8hctAIkjtmMnUWuJmr5Yi
         /8IHOOWIvkxM0xPDdNkGQnlsh3o8yeRGbKem4+dAdgtd2leabhazaKuCIb5OElp+6O5D
         6OaSMctUxitf5kFcBe8bCrlLW1Ym/qbVsxo+NWmaasgdf28dsJaVs7lfztoXZ4aOF3Jv
         ZY5kkai3aiqJaUjQ43u20Dv+gcchRZUqDmTumwH3KKfQZFj5K3uD7UDbbM9MWgsKIPpo
         tO/8HMqKd0vpefkPWBGKgGWiUW+DIK+h4WYDZGPAKWog/YvaQMmqoCm5AcPyO40v+Cli
         it7Q==
X-Gm-Message-State: AFeK/H0Ydm/EzxE9Bxh/EaUMCRE2SHEkPIeBRWxM3Dadqd1zz2S3t2+ceesxV9QAiqbhXe+AWHyKCJqyEJEW2g==
X-Received: by 10.107.137.226 with SMTP id t95mr20195982ioi.79.1490607553281;
 Mon, 27 Mar 2017 02:39:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Mon, 27 Mar 2017 02:38:42 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703270752360.2488@hadrien>
References: <alpine.DEB.2.20.1703270752360.2488@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 27 Mar 2017 15:08:42 +0530
Message-ID: <CAOCi2DH2m=P5esiCFSyzAANB12PDVzKatK6NJUweL=Ey6+c-pA@mail.gmail.com>
Subject: Re: [Outreachy kernel] documentation
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 27, 2017 at 11:23 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> Commenting on Varsha's comments made me think of of the semantics patch
> below that I wrote at some time back to check kerneldoc comments.  Feel
> free to see if it comes up with anything interesting.
>
> julia
>
> @initialize:ocaml@
> @@
>
> let tbl = ref []
> let fnstart = ref []
> let success = Hashtbl.create 101
> let thefile = ref ""
> let parsed = ref []
> let nea = ref []
>
> let parse file =
>   thefile := List.nth (Str.split (Str.regexp "linux-next/") file) 1;
>   let i = open_in file in
>   let startline = ref 0 in
>   let fn = ref "" in
>   let ids = ref [] in
>   let rec inside n =
>     let l = input_line i in
>     let n = n + 1 in
>     match Str.split_delim (Str.regexp_string "*/") l with
>       before::after::_ ->
>         (if not (!fn = "")
>         then tbl := (!startline,n,!fn,List.rev !ids)::!tbl);
>         startline := 0;
>         fn := "";
>         ids := [];
>         outside n
>     | _ ->
>         (match Str.split (Str.regexp "[ \t]+") l with
>           "*"::name::rest ->
>             let len = String.length name in
>             (if !fn = "" && len > 2 && String.sub name (len-2) 2 = "()"
>             then fn := String.sub name 0 (len-2)
>             else if !fn = "" && (not (rest = [])) && List.hd rest = "-"
>             then
>               if String.get name (len-1) = ':'
>               then fn := String.sub name 0 (len-1)
>               else fn := name
>             else if not(!fn = "") && len > 2 &&
>               String.get name 0 = '@' && String.get name (len-1) = ':'
>             then ids := (String.sub name 1 (len-2)) :: !ids);
>         | _ -> ());
>         inside n
>   and outside n =
>     let l = input_line i in
>     let n = n + 1 in
>     if String.length l > 2 && String.sub l 0 3 = "/**"
>     then
>       begin
>         startline := n;
>         inside n
>       end
>     else outside n in
>   try outside 0 with End_of_file -> ()
>
> let hashadd tbl k v =
>   let cell =
>     try Hashtbl.find tbl k
>     with Not_found ->
>       let cell = ref [] in
>       Hashtbl.add tbl k cell;
>       cell in
>   cell := v :: !cell
>
> @script:ocaml@
> @@
>
> tbl := [];
> fnstart := [];
> Hashtbl.clear success;
> parsed := [];
> nea := [];
> parse (List.hd (Coccilib.files()))
>
> @r@
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
> parsed := f :: !parsed;
> fnstart := (List.hd p).line :: !fnstart
>
> @param@
> identifier f;
> type T;
> identifier i;
> parameter list[n] ps;
> parameter list[n1] ps1;
> position p;
> @@
>
> f@p(ps,T i,ps1) { ... }
>
> @script:ocaml@
> @@
>
> tbl := List.rev (List.sort compare !tbl)
>
> @script:ocaml@
> p << param.p;
> f << param.f;
> @@
>
> let myline = (List.hd p).line in
> let prevline =
>   List.fold_left
>     (fun prev x ->
>       if x < myline
>       then max x prev
>       else prev)
>     0 !fnstart in
> let _ =
>   List.exists
>     (function (st,fn,nm,ids) ->
>       if prevline < st && myline > st && prevline < fn && myline > fn
>       then
>         begin
>           (if not (String.lowercase f = String.lowercase nm)
>           then
>             Printf.printf "%s:%d %s doesn't match preceding comment: %s\n"
>               !thefile myline f nm);
>           true
>         end
>       else false)
>     !tbl in
> ()
>
> @script:ocaml@
> p << param.p;
> n << param.n;
> n1 << param.n1;
> i << param.i;
> f << param.f;
> @@
>
> let myline = (List.hd p).line in
> let prevline =
>   List.fold_left
>     (fun prev x ->
>       if x < myline
>       then max x prev
>       else prev)
>     0 !fnstart in
> let _ =
>   List.exists
>     (function (st,fn,nm,ids) ->
>       if prevline < st && myline > st && prevline < fn && myline > fn
>       then
>         begin
>           (if List.mem i ids then hashadd success (st,fn,nm) i);
>           (if ids = [] (* arg list seems not obligatory *)
>           then ()
>           else if not (List.mem i ids)
>           then
>             Printf.printf "%s:%d %s doesn't appear in ids: %s\n"
>               !thefile myline i (String.concat " " ids)
>           else if List.length ids <= n || List.length ids <= n1
>           then
>             (if not (List.mem f !nea)
>             then
>               begin
>                 nea := f :: !nea;
>                 Printf.printf "%s:%d %s not enough args\n" !thefile myline f;
>               end)
>           else
>             let foundid = List.nth ids n in
>             let efoundid = List.nth (List.rev ids) n1 in
>             if not(foundid = i || efoundid = i)
>             then
>               Printf.printf "%s:%d %s wrong arg in position %d: %s\n"
>                 !thefile myline i n foundid);
>           true
>         end
>       else false)
>     !tbl in
> ()
>
> @script:ocaml@
> @@
> List.iter
>   (function (st,fn,nm,ids) ->
>     if List.mem nm !parsed
>     then
>       let entry =
>         try !(Hashtbl.find success (st,fn,nm))
>         with Not_found -> [] in
>       List.iter
>         (fun id ->
>           if not (List.mem id entry) && not (id = "...")
>           then Printf.printf "%s:%d %s not used\n" !thefile st id)
>         ids)
>   !tbl
>
Hi Julia,

I get the following error when running this script:
Failure in rule starting on line 65
exn while in timeout_function
nth

The version of OCaml I'm using is : 4.02.3.

spatch --version
spatch version 1.0.6-00036-gb62df17 compiled with OCaml version 4.02.3
Flags passed to the configure script: --prefix=/usr
Python scripting support: yes
Syntax of regular expresssions: PCRE

Any pointers on why this might be happening?

Thanks,
Gargi
> --

