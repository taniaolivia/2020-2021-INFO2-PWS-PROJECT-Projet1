<!DOCTYPE html>
<html lang="fr">

    <?php include 'gabarit.php';?>
    <?php include 'infoBD.php';?>
    <p><b>Tous les membres</b></p>

    <?php
        $con=mysqli_connect(bd_host, bd_user, bd_password,bd_name);
        mysqli_select_db(bd_name);
        $ressource = mysqli_query($con,"SELECT nom, prenom FROM membre");
        while ($enregistrement = mysqli_fetch_array($ressource) )
        {
            echo "<li style='list-style: none;'>${enregistrement['prenom']} ${enregistrement['nom']} </li>";
        }
    ?>
    </div>

    </section>
    <?php include 'footer.php';?>
</html>



