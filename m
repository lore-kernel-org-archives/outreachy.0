X-GM-THRID: 6392026082663464960
X-Received: by 10.99.2.19 with SMTP id 19mr4465114pgc.113.1488453320920;
        Thu, 02 Mar 2017 03:15:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.36.198 with SMTP id k189ls1972862iok.46.gmail; Thu, 02 Mar
 2017 03:15:20 -0800 (PST)
X-Received: by 10.99.140.4 with SMTP id m4mr4150079pgd.72.1488453320030;
        Thu, 02 Mar 2017 03:15:20 -0800 (PST)
Received: by 10.202.215.6 with SMTP id o6msoig;
        Thu, 2 Mar 2017 02:47:23 -0800 (PST)
X-Received: by 10.157.55.198 with SMTP id x64mr4552805otb.110.1488451643668;
        Thu, 02 Mar 2017 02:47:23 -0800 (PST)
Return-Path: <andreas.dilger@intel.com>
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id u12si1407579pfd.3.2017.03.02.02.47.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 02:47:23 -0800 (PST)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP; 02 Mar 2017 02:47:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,230,1484035200"; 
   d="scan'208";a="1136939527"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
  by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2017 02:47:23 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.248.2; Thu, 2 Mar 2017 02:47:22 -0800
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.88]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.4]) with mapi id 14.03.0248.002;
 Thu, 2 Mar 2017 02:47:22 -0800
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
CC: Gargi Sharma <gs051095@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, "jsimmons@infradead.org"
	<jsimmons@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Replace typedef
 with struct
Thread-Topic: [Outreachy kernel] [PATCH v2] staging: lustre: Replace typedef
 with struct
Thread-Index: AQHSkZDm43rs1w92bkGjry6peH0JxqF+hToAgAAMjYCAAAe8AIADTjKA
Date: Thu, 2 Mar 2017 10:47:22 +0000
Message-ID: <5D833EA8-F256-4451-99E0-CF93C70DA617@intel.com>
References: <1488265307-24641-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1702280805150.2078@hadrien>
 <CAOCi2DEvajT69tumvzBPYQjBBOkVB49FO+paGJSGasY+BZSeyg@mail.gmail.com>
 <20170228081840.GA1035@kroah.com>
In-Reply-To: <20170228081840.GA1035@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.254.124.201]
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <73F65B9A94DE2A4FB70CEBAD56BA03E9@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Feb 28, 2017, at 01:18, Greg KH <gregkh@linuxfoundation.org> wrote:
>=20
> On Tue, Feb 28, 2017 at 01:20:59PM +0530, Gargi Sharma wrote:
>> On Tue, Feb 28, 2017 at 12:36 PM, Julia Lawall <julia.lawall@lip6.fr> wr=
ote:
>>>=20
>>>=20
>>>=20
>>> On Tue, 28 Feb 2017, Gargi Sharma wrote:
>>>=20
>>>> As per the Linux kernel coding style guidelines, using typedef for a
>>>> structure type is not recommended. Hence, occurences of typedefs have
>>>> been removed. To find the occurences of the structures grep was used
>>>> and no uses were found.
>>>=20
>>> Actually, I'm not sure to understand.  No uses of the structures were
>>> found at all?  If so, they should just be dropped.  Or are there uses, =
but
>>> they already have the word "struct" in front of them?
>>=20
>> The first structure "ext_acl_xattr_entry" is used as one of the fields i=
n the=20
>> other structure "ext_acl_xattr_header". I could not find any uses of the
>> structure
>> "ext_acl_xattr_header" inside the staging directory. Should I drop these=
 two
>> structures then?
>=20
> I think so, we shouldn't keep around structures that are not actually
> used.
>=20
> Unless the Lustre maintainers are hiding something somewhere else that
> uses these?

Looks like this is left over from 341f1f0affed1c24712f37c95bb654b3b33ab2c6
"staging: lustre: remove remote client support".  The ext_acl_xattr_{entry,=
header}
structs were accessed from CFS_ACL_XATTR_SIZE() and CFS_ACL_XATTR_COUNT() m=
acros,
along with posix_acl_xattr_{entry,header} but it looks like all of that was=
 deleted
(and good riddance).  The CFS_ACL_XATTR_* macros should be removed also.

That leaves the lustre_eacl.h header empty, so it could just be deleted ent=
irely,
and removed from llite/llite_internal.h (where posix_acl_xattr.h is already=
 included)
and llite/xattr.h (which includes llite_internal.h).

Cheers, Andreas









