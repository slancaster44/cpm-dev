diskdir=$DISKDIR

Usage () {
	echo "Usage: `basename $0` [-t] drive [user:]file"
}

# check arguments
if [ $# -lt 2 -o $# -gt 3 ]; then
	Usage
	exit 1
fi
if [ $# -eq 3 -a $1 != "-t" ]; then
	Usage
	exit 1
fi

# process arguments
if [ $# -eq 3 ]; then
	text="-t"
	disk=$2
	diskfile=$diskdir"/drive"$2".dsk"
	file=$3
else
	text=""
	disk=$1
	diskfile=$diskdir"/drive"$1".dsk"
	file=$2
fi
case $disk in
	"a") format="-f ibm-3740"
	;;
	"b") format="-f ibm-3740"
	;;
	"c") format="-f ibm-3740"
	;;
	"d") format="-f ibm-3740"
	;;
	"i") format="-f z80pack-hd"
	;;
	"j") format="-f z80pack-hd"
	;;
	"p") format="-f z80pack-hdb"
	;;
	*) echo "unknown disk $disk, cpmsim disks are a, b, c, d, i, j and p"
	exit 1
	;;
esac

if [ ! -f $diskfile ]; then
	echo "disk $disk not mounted on $diskfile"
	exit 1
fi

# get file with cpmtools
cmd="cpmrm $text $format $diskfile $file ."
#echo $cmd
$cmd
