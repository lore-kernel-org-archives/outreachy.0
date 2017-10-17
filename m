X-GM-THRID: 6477930690755166208
X-Received: by 10.84.211.39 with SMTP id b36mr3510967pli.13.1508260772907;
        Tue, 17 Oct 2017 10:19:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.100.133 with SMTP id y127ls501792pgb.26.gmail; Tue, 17 Oct
 2017 10:19:31 -0700 (PDT)
X-Received: by 10.98.130.129 with SMTP id w123mr3173013pfd.19.1508260771895;
        Tue, 17 Oct 2017 10:19:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508260771; cv=none;
        d=google.com; s=arc-20160816;
        b=XIo/qfyf5jIRlnP0yMNcbk+YoAadjkz0Uxfj1I/1HnPiGyZS6NZleXqhEedawabdxj
         +JYv40LK8UxM6tl/+cHgkZxK4ucc7Jcl01vmy0kMHb4QwmQfXEZD1H0t+dPopm6zozvm
         VT0/9Y4VCYrkrP2Hey0fv8VDmpiVDUbzAz1mrA8NRDIhYkYmfzWHGzJKBGB4GGUaHD6a
         /n0ft0CZgQJtsStPHWwcu72Gth37rReoMW3yzWeUkk1yEPLWW5KZ2LKemtctpKssre7A
         TMWp79mCUjLKZWpUpS4gZ1Uu0AshMiEKXKpYiiz2c34zd3H7YmjycVxmy0a4RTAQKzGV
         iz4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=n7wIBhoWE0IivHkULY7lYAhgXsg5b1RyLRTXbojfbbI=;
        b=NN7cydnrt0o2Rr2lKDOwX0xALsRdHhbq9hj5JaM6q7GUb5aR81gN+MW31E1b4mj1RJ
         LAsq/4iNhiNbErxxnKWZA/5AsaysSsWRfmwtoBH1jygVRtPB2z+oHVYlx1QCR+YDnRxY
         ylP0wB8GdxQtQXa2okTFIxHYfgs6TLKXfmeGzDL7rCeIGFTpSBhx+697cmbzlJEP6SKY
         xjiAAZZtYk4YiFanq/JocY2kLJqnnLVUAwktpINCyD82a07ALydRndQuj/kv4MvNqh+S
         hzevVQjcxdFXdOHiM1eP6A/1qT9G9b/Y843WVXigSFGdHeQ4gP/smY/t9uDPgAPmK4Qk
         HjuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=uf/t1NS7;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::230 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk0-x230.google.com (mail-vk0-x230.google.com. [2607:f8b0:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id z2si572829plk.4.2017.10.17.10.19.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 10:19:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::230 as permitted sender) client-ip=2607:f8b0:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=uf/t1NS7;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::230 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk0-x230.google.com with SMTP id b5so1589150vkf.12
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 10:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=n7wIBhoWE0IivHkULY7lYAhgXsg5b1RyLRTXbojfbbI=;
        b=uf/t1NS7S7SXSBFpTgL2taznvh6hUJ6AWTbciO1ij9UY01Bwfidoy95ny5TV+/I4xo
         TmchoSwdzL4xhqXUmxVvLjnVJkURfU2eaNTa8YAg0bxf5HSVkE9hwfeHYGxTaXUiTNsF
         Vfv6VyiggRaILaA2dBYkpcwJNjd60JETZQOjchwOtQbt1N8s2g1Fe0H3cOoNfBZeM0fK
         Q6NnoE9I8sY4OtrcFab1eiZriii5rfMwRxQiWLWTsRHP8vXtWzlVAujxMUuEGN6Ztuvm
         YUICZXoC8/lbZBkNZ3DxrzDdPEZeezzNc3AW7cvAf/gXglU2WzMhk0X8dtmxFhWGyTfY
         pTkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=n7wIBhoWE0IivHkULY7lYAhgXsg5b1RyLRTXbojfbbI=;
        b=cLiUy2pHlMFJDGM+rcNOyZHXbJAGBHBlfTbnk0UV5rRkw7tPz+MUK24M3RGfkj5f5N
         Kmdl/KNX/Ita40cQHwsZOwI1DOA+HKPZqoLZWTtGR7Qe0oqeNks/NrUYLGBvxk1vGrb/
         KQIeRHNEslXR/jTFutZwqRPzW5i2xV3+evVJ5Y2Gv6vh1DbPGlSzHJvc6DXCEMqa7cZy
         GW6AOawFtK4YvzLgYx2rt0ZpSB0tf7T+aPv+G17u21A2RM4KhKr3oRJED59/NFrPzT4r
         KHJbig2IzMlBDB3jpRxYyucUiTQNSDbs1gyYm5U92GnUjaBHwlb4ykaBxjb+EKmB90bh
         V5uA==
X-Gm-Message-State: AMCzsaXTRgU712DvV+QlPoiSBJoawJfF9zjZg7MqYhe+19KshpJWgApa
	pSXREWoNdbzXFANFUyRDfCyZ5qWf
X-Google-Smtp-Source: ABhQp+SnfR7tXH/CrGAje9vQKEutueztqjKKCe+/CyLT/cPqUGSTS5ZcpMTE2zwo7rNCfzyqNOoCig==
X-Received: by 10.31.165.214 with SMTP id o205mr3662879vke.147.1508260771009;
        Tue, 17 Oct 2017 10:19:31 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.206.93.190])
        by smtp.gmail.com with ESMTPSA id w204sm2398172vke.42.2017.10.17.10.19.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 10:19:30 -0700 (PDT)
Date: Tue, 17 Oct 2017 13:19:28 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Problem compiling nftables
Message-ID: <20171017171928.GJ6963@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi,

I trying to install nftables from source ask part of my Outreachy application tasks. I already installed libmnl and libnftnl successfully.

The problem comes after the 'make' command while trying to compile nftables. I'm running Ubuntu 16.04 and following the steps described here: https://wiki.nftables.org/wiki-nftables/index.php/Building_and_installing_nftables_from_sources

I removed the last commit of the nftables master branch: 8dee5e43ad4beb2b0a95e0bbf2b3972630c1b327 'netlink: Use nftnl_expr_fprintf() in netlink_dump_expr()', to avoid a compilation error because a dependency with a libnftnl's patch still pending to apply. But the following error is beyond my skills right now and maybe is just a detail that I'm missing and somebody can help me.

Thanks in advance
frank

Here is the relevant make output:

...
make[3]: Leaving directory '/home/vagrant/git/pablo/nftables/nftables/include/linux'
make[3]: Entering directory '/home/vagrant/git/pablo/nftables/nftables/include'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/home/vagrant/git/pablo/nftables/nftables/include'
make[2]: Leaving directory '/home/vagrant/git/pablo/nftables/nftables/include'
Making all in doc
make[2]: Entering directory '/home/vagrant/git/pablo/nftables/nftables/doc'
  GEN      nft.8
Usage: jw [<options>] <sgml_file>
where <options> are:
  -f|--frontend <frontend>: 	 Specify the frontend (source format)
  				 (default is docbook)
  -b|--backend <backend>: 	 Specify the backend (destination format)
  				 (default is html)
  -c|--cat <file>: 		 Specify an extra SGML open catalog
  -n|--nostd: 			 Do not use the standard SGML open catalogs
  -d|--dsl <file>|default|none:	 Specify an alternate style sheet
  				 (default is to use the default stylesheet)
  -l|--dcl <file>: 		 Specify an alternate SGML declaration
  				 (usual ones like xml.dcl get detected automatically)
  -s|--sgmlbase <path>: 	 Change base directory for SGML distribution
  				 (usually /usr/share/sgml)
  -p|--parser <program>: 	 Specify the parser if several are installed
  				  (jade or openjade)
  -o|--output <directory>: 	 Set output directory
  -u|--nochunks: 		 Output only one big file
  				 (overrides the stylesheet settings)
  -i|--include <section>: 	 Specify a SGML marked section to include
  				 (should be marked as "ignore" in the SGML text)
  -w|--warning <warning_type>|list: Control warnings or display the allowed warning types
  -e|--errors <error_type>|list: Control errors or display the allowed error types
  -h|--help: 			 Print this help message and exit
  -V <variable[=value]>: 	 Set a variable
  -v|--version: 		 Print the version and exit
Makefile:539: recipe for target 'nft.8' failed
make[2]: *** [nft.8] Error 1
make[2]: Leaving directory '/home/vagrant/git/pablo/nftables/nftables/doc'
Makefile:397: recipe for target 'all-recursive' failed
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory '/home/vagrant/git/pablo/nftables/nftables'
Makefile:338: recipe for target 'all' failed
make: *** [all] Error 2

