X-GM-THRID: 6392026082663464960
X-Received: by 10.98.92.2 with SMTP id q2mr112710pfb.21.1488536365982;
        Fri, 03 Mar 2017 02:19:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls8252299otb.8.gmail; Fri, 03 Mar 2017
 02:19:25 -0800 (PST)
X-Received: by 10.157.13.131 with SMTP id 3mr750928ots.59.1488536365576;
        Fri, 03 Mar 2017 02:19:25 -0800 (PST)
Return-Path: <andreas.dilger@intel.com>
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id c123si2012472pfa.4.2017.03.03.02.19.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 02:19:25 -0800 (PST)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 02:19:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,236,1484035200"; 
   d="scan'208";a="940179491"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by orsmga003.jf.intel.com with ESMTP; 03 Mar 2017 02:19:23 -0800
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.248.2; Fri, 3 Mar 2017 02:19:18 -0800
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.88]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.247]) with mapi id 14.03.0248.002;
 Fri, 3 Mar 2017 02:19:18 -0800
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Gargi Sharma <gs051095@gmail.com>
CC: Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, "jsimmons@infradead.org"
	<jsimmons@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Replace typedef
 with struct
Thread-Topic: [Outreachy kernel] [PATCH v2] staging: lustre: Replace typedef
 with struct
Thread-Index: AQHSkZDm43rs1w92bkGjry6peH0JxqF+hToAgAAMjYCAAAe8AIADTjKAgABuLgCAARxPgA==
Date: Fri, 3 Mar 2017 10:19:17 +0000
Message-ID: <C845D0CA-2686-48E9-BC9E-AE63FC23223D@intel.com>
References: <1488265307-24641-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1702280805150.2078@hadrien>
 <CAOCi2DEvajT69tumvzBPYQjBBOkVB49FO+paGJSGasY+BZSeyg@mail.gmail.com>
 <20170228081840.GA1035@kroah.com>
 <5D833EA8-F256-4451-99E0-CF93C70DA617@intel.com>
 <CAOCi2DEwYyqUe0k4YZT-Okf=Udys+g2QuwdcEmqbtgwebFEQyQ@mail.gmail.com>
In-Reply-To: <CAOCi2DEwYyqUe0k4YZT-Okf=Udys+g2QuwdcEmqbtgwebFEQyQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.254.124.201]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <98103A8BA718BD4D8833E7FAE071C49D@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Mar 2, 2017, at 10:21, Gargi Sharma <gs051095@gmail.com> wrote:
>=20
> On Thu, Mar 2, 2017 at 4:17 PM, Dilger, Andreas <andreas.dilger@intel.com=
> wrote:
> >
> > On Feb 28, 2017, at 01:18, Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Tue, Feb 28, 2017 at 01:20:59PM +0530, Gargi Sharma wrote:
> > >> On Tue, Feb 28, 2017 at 12:36 PM, Julia Lawall <julia.lawall@lip6.fr=
> wrote:
> > >>>
> > >>>
> > >>>
> > >>> On Tue, 28 Feb 2017, Gargi Sharma wrote:
> > >>>
> > >>>> As per the Linux kernel coding style guidelines, using typedef for=
 a
> > >>>> structure type is not recommended. Hence, occurences of typedefs h=
ave
> > >>>> been removed. To find the occurences of the structures grep was us=
ed
> > >>>> and no uses were found.
> > >>>
> > >>> Actually, I'm not sure to understand.  No uses of the structures we=
re
> > >>> found at all?  If so, they should just be dropped.  Or are there us=
es, but
> > >>> they already have the word "struct" in front of them?
> > >>
> > >> The first structure "ext_acl_xattr_entry" is used as one of the fiel=
ds in the
> > >> other structure "ext_acl_xattr_header". I could not find any uses of=
 the
> > >> structure
> > >> "ext_acl_xattr_header" inside the staging directory. Should I drop t=
hese two
> > >> structures then?
> > >
> > > I think so, we shouldn't keep around structures that are not actually
> > > used.
> > >
> > > Unless the Lustre maintainers are hiding something somewhere else tha=
t
> > > uses these?
> >
> > Looks like this is left over from 341f1f0affed1c24712f37c95bb654b3b33ab=
2c6
> > "staging: lustre: remove remote client support".  The ext_acl_xattr_{en=
try,header}
> > structs were accessed from CFS_ACL_XATTR_SIZE() and CFS_ACL_XATTR_COUNT=
() macros,
> > along with posix_acl_xattr_{entry,header} but it looks like all of that=
 was deleted
> > (and good riddance).  The CFS_ACL_XATTR_* macros should be removed also=
.
> >
> Hi,
>=20
> >=20
> > That leaves the lustre_eacl.h header empty, so it could just be deleted=
 entirely,
> > and removed from llite/llite_internal.h (where posix_acl_xattr.h is alr=
eady included)
> > and llite/xattr.h (which includes llite_internal.h).
>=20
> Okay, that makes sense. So should I send a v3 where I delete the header f=
ile and places it
> has been referred, or an entirely new patch?

If the whole header is being deleted, there isn't any point to have the ear=
lier patch.
It makes the most sense to just have a single patch that deletes the unused=
 header.

Cheers, Andreas
--
Andreas Dilger








